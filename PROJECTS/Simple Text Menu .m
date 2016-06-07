% Example of Simple Text-Based Menu

% Set up the stopping condition: 
%   false if user wants to exit the program
%   true if the user wants to continue running the program
continueProgram = true;
% This while loop will continue to loop until continueProgram becomes false 
while continueProgram == 1;
    % Clear the screen
    % This makes the menu interactions a bit cleaner
    clc;
    % Display the menu to the user
	%print_menu_options;
    a=menu('What do you want to do?\n','Set Username','Load Data File','Clear Memory','Set Output Filename','Plot Histogram','Plot Histogram Fit','Plot Probability Plots','Regression of y upon x','Find Probablilty given x or z values','Quit');
    % Print prompt    
    % Get user input 
    % Determine which action to take based on the user's inputswitch choice
    case '1'
        Set_Username;
    case '2'
        Load_Data;
    case '3'
        Clear_Mem;
    case '4'
        Save;
    case '5'
        Plot_Histogram; 
    case '6'
        Hist_Fit;
    case '7'
        Prob_Plot;
    case '8'
        Regression;
    case '9'
        Find_Prob;
    case '10'
        Quit;
    end % end of switch
end % end of while
% clean up after ourselves
clc;
clear done choice;
% end of script