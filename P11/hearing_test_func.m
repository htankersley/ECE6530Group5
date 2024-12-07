% This function serves as a hearing test, returning a plot showing
% frequency [Hz] versus amplitude threshold at which that frequency becomes
% audible [dB]. 

% Function requires two inputs: 
% sampling rate: the rate at which each sound signal is sampled
% duration: the time duration [s] for which each sound signal is played

% After running the function (from P11_hearing_test.m or through your own
% file), the test expects a key-press to initiate the test. During the
% test, the user will be prompted to enter 'y' if they can hear the tone,
% 'n' if they can not hear the tone, or 'q' if they wish to end the test
% and view results. There is no minimum number of frequencies, but the more you
% do, the more useful and accurate the results will be.

% This test should be completed with headphones for best results. Check the
% frequency response of your headphones to see if any frequencies have low
% amplitude response, as this will affect your test results. The initial
% amplitude is set low to reduce risk of hearing damage, but you should
% still test your volume before taking the test to make sure it isn't too
% high. Once you start your test, keep your system / headphone volume set
% to a constant level to avoid messing up the test results.

function hearing_test_func(samplingRate, duration)
    
    % We chose a threshold frequency of 600 Hz to match the frequency response
    % graphs found for airpod pros 2nd generation headphone:
    % https://www.rtings.com/headphones/reviews/apple/airpods-pro-2nd-generation-truly-wireless
    frequency = 600;

    % The initial amplitude is chosen to be approximately the hearing
    % threshold at 600 Hz
    init_amplitude = 0.0001; 

    % Typical human hearing range
    frequency_range = [20, 8000];

    % Variable initiation for tracking amplitude and frequency
    amplitude = init_amplitude;
    frequency_log = [];
    amplitude_log = [];
     

    % Variable initiation for managing increasing/decreasing of amplitude (always
    % starting with increasing)
    increasing = 1;
    increasing_amp = 0;

    % Print test instructions
    fprintf('Instructions:\n');
    fprintf('Press any key to start the test.\n');
    fprintf('Press "y" if you hear the tone.\n');
    fprintf('Press "n" if you do not hear the tone.\n');
    fprintf('Press "q" to quit.\n\n');
    
    % Wait
    pause;
    fprintf('Test started.\n\n');

    % The test cycles through several randomized frequencies within the given
    % range. The test checks increasing and then decreasing amplitudes for the same frequency, and then
    % averages the two results to get a more accurate value. When the user
    % has completed both tests for a given frequency, the test moves on to
    % the next randomized frequency until the user enters 'q' to stop the
    % test.
    while true

        % Use the sampling rate, duration, frequency, and amplitude to
        % generate a cosine wave representing a sound wave
        tt = 0:1/samplingRate:duration;
        xx = amplitude * cos(2 * pi * frequency * tt);

        % Play the sound for the given duration
        sound(xx, samplingRate);
        pause(duration);

        % Request user input to find out if the user heard the tone
        response = input('Did you hear the tone? ("y" = yes, "n" = no, "q" = quit): ', 's');

        %Collect amplitude data for increasing and decreasing amplitudes
        if strcmp(response, 'y') % The tone was heard
            fprintf('The tone was at %.2f Hz\n', frequency);
            fprintf('The amplitude was at %.4f \n', amplitude);

            % If we have been increasing the frequency and hear the tone, save the increasing
            % amplitude, and then switch to decreasing the frequency
            % (indicated by increasing = 0)
            if increasing == 1
                increasing_amp = amplitude; % Save the increasing amplitude
                increasing = 0; % Switch to decrease mode

            % If we have been decreasing and hear the tone, continue
            % decreasing until the tone is no longer heard
            else
                % Decrease by 10% - we decrease less than we increase to get
                % a more precise value
                amplitude = amplitude - 0.1*amplitude; 
            end  
            
        elseif strcmp(response, 'n') % The tone was not heard
            fprintf('The tone was at %.2f Hz\n', frequency);
            fprintf('The amplitude was at %.4f \n', amplitude);
            
            % If we are increasing and don't hear the tone, continue
            % increasing until the tone is heard
            if increasing == 1
                % Increase amplitude by 50%
                amplitude = amplitude + 0.5*amplitude;

            % If we have been decreasing the frequency, log the frequency,
            % log the average of the increasing and current amplitude, and
            % then reset the test to test a new frequency
            else
                %Save the frequency and the average of the increasing and
                %decreasing amplitudes:
                frequency_log(end+1) = frequency;
                amplitude_log(end+1) = (increasing_amp + amplitude)/2;

                % Reset to repeat for new frequency
                increasing = 1;
                increasing_amp = 0;
                amplitude = init_amplitude;
                frequency = randi(frequency_range); % Random new frequency
            end      
        elseif strcmp(response, 'q') % The user is ending the test
            fprintf('Test completed.\n');
            break;
        else % Invalid input
            fprintf('Invalid input. Please enter "y", "n", or "q".\n');
        end
    end
    
    % Find the logged amplitudes in dB
    amplitude_db = 20.*log10(amplitude_log);

    % Calculate the dB value of the initial amplitude - remember that the
    % initial amplitude is also the estimated threshold of hearing for our
    % threshold frequency of 600 Hz
    threshold_offset = 20.*log10(init_amplitude);

    % Find the relative dBr amplitude values (this gives us a base line of
    % zero)

    amplitude_dbr = amplitude_db - threshold_offset;
    
    % Plot the dBr amplitude versus logarithmic frequency to show results
    % of hearing test
    figure(1);
    semilogx(frequency_log, amplitude_dbr, '.', 'MarkerSize', 30);
    xlabel('Frequency (Hz)');
    ylabel('Amplitude Response(Relative dB))');
    title('Hearing Test Results');
    subtitle('dB Offset = -80')
    grid on;
end
