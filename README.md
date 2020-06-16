# **ECE 438: Digital Signal Processing with Applications**

**Course Description:**
The course is presented in three units. Foundations: the review of continuous-time and discrete-time signals, and spectral analysis; design of finite impulse response and infinite impulse response digital filters; processing of random signals. Speech processing: vocal tract models and characteristics of the speech waveform; short-time spectral analysis and synthesis ; linear predictive coding. Image processing: two dimensional signals, systems, and spectral analysis; image enhancement; image coding; image reconstruction. The laboratory experiments are closely coordinated with each unit. Throughout the course, the integration of digital signal processing concepts in a design environment is emphasized. 

### **List of Lab Assignments**

- **Lab1: Discrete and Continuous-Time Signals**<br/>
This lab introduces the properties of continuous and discrete-time signals using the Matlab software environment. The lab implements simple Matlab scripts that display continuous and discrete time signals. The lab also implements scripts/functions to numerically calculate integrals, process speech signals, and plot special signals/functions.

- **Lab2: Discrete-Time Systems**<br/>
This lab introduces the processing of discrete-time signals using discrete-time systems. This lab implements scripts/functions in Matlab that apply a discrete-time differentiator and integrator to a signal. The lab also has scripts to plot the impulse response of different discrete-time systems.

- **Lab3: Frequency Analysis**<br/>
This lab introduces Fourier series and Fourier transforms to analyze continuous-time and discrete-time signals and systems. The lab uses Simulink in Matlab to model systems and test them using different inputs/parameters. The lab also implements scripts/functions to compute and plot the DTFT of a discrete-time signal, the impulse response of a system, and the magnitude and phase of the frequency response.

- **Lab4a: Sampling and Reconstruction of Continuous-Time Signals**<br/>
This lab introduces systems used for sampling and reconstruction of continuous-time signals. The lab implements scripts/functions that compute and plot the magnitude response of systems. The lab also uses Simulink to implement sampling and reconstruction of signals using an impulse generator and a sample and hold device. 

- **Lab4b: Interpolation and Decimation**<br/>
This lab introduces interpolation and decimation of digital signals to reconstruct the original signals. The lab uses Simulink to demonstrate discrete-time interpolation/decimation. The lab also implements scripts/functions to decimate a signal by applying a low-pass filter.

- **Lab5: Digital Filter Design**<br/>
This lab introduces basic examples of FIR and IIR filters and concepts of FIR filter design. The lab implements scripts that plot the magnitude response of FIR/IIR filters and functions that implement the FIR/IIR filters.

- **Lab6a: Discrete Fourier Transform**<br/>
This lab introduces the DFT and sampling and windowing effects. This lab implements scripts/functions that truncate a signal using a window and then plot the magnitude of the window and DFT of the truncated signal. The lab also implements scripts/functions to compute the DFT/IDFT using two methods: for loops or matrix/vector operations.

- **Lab6b: Fast Fourier Transform Algorithm**<br/>
This lab introduces the FFT and continues with implementation of the DFT. This lab implements scripts/functions to apply a Hamming window to the DFT/IDFT of a signal. It also implements a function to compute samples of the DTFT and realize a divide and conquer DFT function to implement the FFT algorithm. 

- **Lab7a: Discrete-Time Random Processes 1**<br/>
This lab introduces basic methods for analyzing random processes. This lab implements scripts/functions to generate and plot random samples and compute the sample mean/variance of the generated samples. The lab also implements functions to find the PDF, CDF, and histograms for randomly generated samples.

- **Lab7b: Discrete-Time Random Processes 2**<br/>
This lab introduces the concept of a bivariate distribution, correlation and covariance with random variables. This lab implements scripts/functions that compute and plot correlation coefficients, autocorrelation and cross-correlation of random variables.

- **Lab8: Number Representation and Waveform Quantizationn**<br/>
This lab introduces how numbers are stored in memory and the effects that quantization has on a signal's quality. This lab implements scripts/functions that uniformly quantize an image/audio array to a certain amount of discrete levels. The lab also implements scripts/functions that analyze the error found in the quantized signal and compares it to the original signal. 

- **Lab9a: Speech Processing 1**<br/>
This lab introduces basic properties of speech signals and uses the short-time discrete-time Fourier Transform to form spectrograms from these signals. This lab implements scripts/functions that categorize speech signal regions into voiced or unvoiced, calculate the average energy of the signal, and calculates the number of zero-crossings. This lab also implements the stDTFT to create both narrowband and wideband spectrograms of input signals.

- **Lab9b: Speech Processing 2**<br/>
This lab introduces a model for speech production and covers some basics of linear predictive coding. This lab implements scripts/functions that synthesize and apply linear predictive coding to speech signals.

- **Lab10a: Image Processing 1**<br/>
This lab introduces fundamentals of digital monochrome images, intensity histograms, pointwise transformations, gamma correction, and image enhancement based on filtering. This lab implements scripts/functions that manipulate an image by flipping, creating a "negative" and multiplying pixel intensity. This lab also implements functions that plot histograms distributions of pixel intensity, do pointwise transformation on an image, gamma corrects an image, and smooths an image using various filters(Lowpass , Median, Gaussian, Highpass).

- **Lab10b: Image Processing 2**<br/>
This lab introduces fundamentals of color images and applications of halftoning. This lab implements scripts/functions that can extract the RGB, luminance and chrominance components of an image. The lab also implements scripts/functions to implement the halftoning techniques of thresholding, Bayer dithering and error diffusion on an image and use the results to compare the performance of each method.