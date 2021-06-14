# SRFP-2021
This is the repository where I am storing all the source codes of the results that are mentioned in my SRF report. 
# MyPlotSpectra_code.ipynb
First I have imported all required modules that I will be using for opening the FITS file, normalizing the data present inside the file and plot them.
The FITS file I have used is a 1 dimensional array that consists of the flux and wavelength data of the observed spectrum. 
Once the wavelength and flux profiles are obtained, I have normalized them using the 'normalize_spectrum_general' function from the module 'laspec'. Many a times, we get a smooth wavelength-dependent signature due to the effect of the grating blaze and change in detector sensitivity over the wavelength region observed. 

So it is necessary to normalize the data by fitting a smooth curve through the continuum and dividing the spectrum by this fit. Normalization of an object's spectrum ensures that the continuum level is unity. Normalizing an object's flux to the continuum response is very useful while making relative measurements such as equivalent widths on a continuum which is a strong function of wavelength.

After normalization,I have plotted the data as wavelength 'vs' relative flux to visualize the sharp dips in the data, which is expected to match with some of the 
prominent emission lines and absorption lines like H_alpha, FeII, etc. The plot is then saved as a pdf file and a .JPEG file. Two plots are obtained: Former one represents the wavelength versus flux profile before normalization and the latter one is that after normalization.

The second part of the code is to calculate the Equivalent Width (EW) of all prominent lines. I have used 'line_index' module from 'laspec' which helps us calculate the EW. The output is obtained as a table that displays EW of the lines and if it is an emission or an absorption line. The source code for the 'laspec' module can be found here: https://github.com/hypergravity/laspec
