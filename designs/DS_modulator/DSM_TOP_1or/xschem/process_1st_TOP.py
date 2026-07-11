import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
from scipy.interpolate import interp1d
from scipy.signal import get_window

# --- 1. PARÁMETROS ---
BW = 20000              
Fs = 2 * BW             # 40 kHz
OSR = 128
F_clk = Fs * OSR        # 5.12 MHz
T_clk = 1 / F_clk     
VDD = 1.8

# Definimos cuántos periodos de Nyquist (Ts) usaremos para la FFT
# Usamos 128 (N) para mantener la coherencia con la entrada
N_nyquist_periods = 128 

file_path = 'DSmod_1st_data_tmp.txt'

try:
    # --- 2. CARGA DE DATOS ---
    df = pd.read_csv(file_path, sep=r'\s+')
    time_col = df.columns[0]
    df = df.drop_duplicates(subset=time_col, keep='first')
    
    t_raw = df.iloc[:, 0].values
    vout_raw = df['Vout'].values 

    # --- 3. DOWNSAMPLING EXACTO (POTENCIA DE 2) ---
    
    # Inicio: saltamos los primeros 2 periodos de establecimiento
    t_start = 2 / Fs + (T_clk / 2)
    
    # Cantidad de muestras totales para la FFT
    # num_samples = Ciclos_Nyquist * OSR = 128 * 128 = 16384
    num_samples = N_nyquist_periods * OSR
    
    # Creamos la rejilla de tiempo exacta
    t_clk_grid = t_start + np.arange(num_samples) * T_clk
    
    # Interpolamos para obtener el Bitstream analógico
    f_interp = interp1d(t_raw, vout_raw, kind='linear', fill_value="extrapolate")
    vout_sampled = f_interp(t_clk_grid)
    
    # --- 4. NORMALIZACIÓN Y VENTANEO ---
    
    # Convertimos a niveles lógicos +1 y -1 para normalizar la potencia
    # (Asumimos que el comparador ideal entregaría +/- 1V lógico)
    bitstream = np.where(vout_sampled > 0, VDD, -1*VDD)
    
    # Aplicamos Ventana de Hann para suavizar el espectro del ruido
    # Esto es vital para ver la curva de Noise Shaping claramente
    window = get_window('hann', num_samples)
    bitstream_windowed = bitstream * window
    
    # Factor de corrección de amplitud por la ventana (Coherent Gain)
    # Para Hann es 0.5, pero lo calculamos exacto:
    w_scale = 1.0 / np.sum(window)

    # --- 5. FFT Y DENSIDAD ESPECTRAL ---
    
    fft_vals = np.fft.fft(bitstream_windowed)
    fft_freqs = np.fft.fftfreq(num_samples, d=T_clk)
    
    # Nos quedamos con la mitad positiva
    half_N = num_samples // 2
    fft_vals = fft_vals[:half_N]
    fft_freqs = fft_freqs[:half_N]
    
    # Calculamos Magnitud en dB (Normalizada a Full Scale)
    # Multiplicamos por 2 (lados positivo/negativo) y escalamos por la ventana
    mag_volts = 2.0 * w_scale * np.abs(fft_vals)
    mag_db = 20 * np.log10(mag_volts + 1e-15)

    # --- 6. REPORTE DE LONGITUD ---
    print("-" * 40)
    print(f"Longitud del vector analizado: {len(bitstream)}")
    is_power_2 = (num_samples & (num_samples-1) == 0) and num_samples != 0
    print(f"¿Es potencia de 2?: {'SÍ' if is_power_2 else 'NO'} (2^{int(np.log2(num_samples))})")
    print("-" * 40)

    # --- 7. GRAFICAR ---
    plt.figure(figsize=(12, 7))
    
    # Usamos semilogx para ver mejor las bajas frecuencias (banda base)
    plt.semilogx(fft_freqs, mag_db, color='blue', linewidth=0.8, label='PSD Bitstream')
    
    # Línea del Ancho de Banda de interés (20 kHz)
    plt.axvline(x=BW, color='red', linestyle='--', label=f'Ancho de Banda ({BW/1000} kHz)')
    
    # Decoración
    plt.title(f'Espectro de Salida (PSD) - Modulador 1er Orden\nOSR={OSR}, N={num_samples} pts', fontsize=14)
    plt.xlabel('Frecuencia (Hz) [Escala Log]', fontsize=12)
    plt.ylabel('Magnitud (dBFS)', fontsize=12)
    plt.grid(True, which='both', linestyle='--', alpha=0.5)
    plt.legend()
    
    plt.xlim(100, F_clk/2) # Ver desde 100Hz hasta Nyquist del reloj
    # plt.ylim(-140, 10)     # Ajustar según lo que salga
    
    plt.tight_layout()
    plt.show()

except Exception as e:
    print(f"Error: {e}")
