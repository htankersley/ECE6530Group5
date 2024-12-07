# ECE6540Group5
Perceptual Frequency Response: Musical Illusion and Hearing Test

## P6 - Shepherd Tone

To run P6:
1. Download `Lab_P_6.m`, `PreLab_P_6.m`, and `key2note.m` from the "P6" folder of this repository
2. Save the files in the same folder
3. Open `PreLab_P_6.m` in MATLAB and press "Run" to observe filtering with the gaussian function
4. Open `Lab_P_6.m` in MATLAB and press "Run" to observe the Shepherd's Tone

After running `Lab_P_6.m`, several .wav files will be generated. Listen to `sequence.wav` and `filtered_sequence.wav` to hear the unfiltered and filtered major scale Shepherd's Tone. Listen to `chromatic.wav` and `filtered_chrom.wav` to hear the unfiltered and filtered chromatic scale Shepherd's Tone.


## P11 - Hearing Test

To run P11:
1. Download `P11_hearing_test.m` and `hearing_test_func.m` from the "P11" folder of this repository
2. Save the files in the same folder
3. Open `P11_hearing_test.m` in MATLAB and press "Run"

After running, look to the MATLAB Command Window to view test instructions. Note that the hearing test expects a key-press (while the Command Window is selected) to initiate the test. After test initiation, the user will be prompted to enter 'y' if they can hear the tone, 'n' if they can not hear the tone, or 'q' if they wish to end the test and view results. There is no minimum number of frequencies, but the more you do, the more useful and accurate the results will be.

This test should be completed with headphones for best results. Check the frequency response of your headphones to see if any frequencies have low amplitude response, as this will affect your test results. The initial amplitude is set low to reduce risk of hearing damage, but you should still test your volume before taking the test to make sure it isn't too high. Once you start your test, keep your system / headphone volume set to a constant level to avoid messing up the test results. 

View comments in both `P11_hearing_test.m` and `hearing_test_func.m` (or view the html files under the P11/P11_HTML folder) to see implementation details and explanations

## IMPORTANT NOTE FOR P11 HTML FILES

The html publication feature of MATLAB does not fully function when user input is needed. For this reason, you can see some red error messages in the P11 html files, and you do not get figure 1 (results) displayed because there is no data to populate it with. For this reason, we also included `Example_Hearing_Test_Results.png` under the P11_HTML folder so you can see an example test result. All the code and comments in the html are still accurate.
