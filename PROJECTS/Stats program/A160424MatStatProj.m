clear, clc, close all, format compact
%% ENGR 112: MATLAB Statistics Project 
% File: A160424MatStatProj.m
%
% Date:    24 April 2016
% By:      Brandell Ellison 724001502
% Section: 112-519
% Team:  
%        Brandell Ellison   724001502 
%
%
%
% ELECTRONIC SIGNATURE
% BRANDELL TYRELL ELLISON
% 
% The electronic signature above indicates the script
% submitted for evaluation is my individual work, and I 
% have a general understanding of all aspects of its
% development and execution.
% 
%% A BRIEF DESCRIPTION 
%{*

%%  GENERAL CHECKLIST:
%{
Procedure for creating a functioning program in matlab.
1. How to properly open a file
    1.1 how to load a file
    1.2 File conversion
2. How to manipulate data within a file
    2.1 Adding headers to a file (for easy indexing) 
    2.2 Elimination of noisy input
        sort(filecontents)
3. How to save edits made to a file
    3.1 Overwrite
    3.2 Create New File
4. how to create a ui menu
    4.1 Bare minimum prompted popup:
        a = menu('title','Option 1','...','Option N')
    4.2 A little more elaborate window (File Preview to right)
    4.3 Custom made menus
5. How to continuously loop a program 
6. Functional compartmentalization
    6.1 Wire inputs and outputs to function handles 
    6.2 Testing functions for validity 
9. Defensive programming measures
    9.1 assume the user is an idiot
10. Conclusion
    10.1 Close program using conditionals
11. Create a directory for it to contain critical folders
   11.1 wire functions to draw directly from those sets of files
   11.2 File management    
      A: throw errors if user tries to save a file outside of domain.
      B: ask user to pull directory from recent memory or ui navigation.
       [Fname,Pname,Find] = uigetfile({'*.mat';'*.m';'*.txt';'*.*'},'Select Desired File','file.txt')%,'MultiSelect',selectmode) As necessary

%% SPECIFICS:
The program should be menu-driven.
o We will demonstrate in-class how to build a simple text-based menu.
    • Input will consist of the name of an existing data file consisting of one or two columns of an
      unknown number of data elements.
    • All output and results will be directed to both the screen and an output file.
    o Output filename should be chosen by user.
    o The data filename should be written to the output file along with date, user name, etc.
    o Values for all the descriptive statistics listed below should be calculated and written to
      the output file in the following format:
        ? Mean = XXX.YY
        ? Median = XXX.YY
        ? Mode = XXX.YY
        ? Var = XXX.YY
        ? Stdev = XXX.YY
        ? Min = XXX.YY
        ? Max = XXX.YY
        ? Count = XXXXXX
    o Please note that the equal signs and decimal points are aligned vertically.
    o Please note that since Count is an integer, it has no decimal point.
    o Note that if Count > 30, use the population standard deviation and put an extra message
      in the output. For Count <= 30, use sample standard deviation and put an extra
      message in the output.
    o Other output associated with z-table questions and answers should also be written to
      the output file.
%% UI DESIGN: 
ext-Based Menu.
The following is a list of possible menu choices. You have the freedom to design the user interface in a
manner you see fit.
o Menu Choices (You may choose a different menu scheme.)
>>  o Set user name
    o Load data file
    o Clear data from memory
    o Set output filename
    o Plot histogram
    o Plot histogram fit
    o Plot probability plots
    o Regression of y on x
    o Find probability given x or z
    o Find x or z given probability
    o Exit
%% DEFENSIVE PROGRAMMING MEASURES:
% Error/Warning Conditions (Examples)
    o Trying to load another file when data is in memory
    o Before using z tables, user must answer question: “In your judgment, is the data
      normally distributed?” The answer should be written to the output file.
    o Input file does not exist.
    o Output file already exists. Data will be overwritten.
    o Invalid probability entered by user. (If negative or greater than one.)
    o Invalid x or z entered by user.
    o For regression, input vectors of unequal length
    o Invalid menu selection entered.
%% FORMATTING AND STYLE GUIDE:
    • Comment your code
    o Comments should explain the code’s intent or summarize what it does
    o Comments should be kept up to date
    o Comments should be clear and correct
    o Avoid endline comments
    o Focus on why rather than how
    o Avoid abbreviations
    o Remove extraneous, redundant, and self-indulgent comments
    o Comment on units and ranges of data
    o Comment on limitations of input data
    o Comment every global variable
    o Don’t use a comment where renaming a variable or function would also work
    o Explain the purpose of every routine and give facts about its input, output, usage,
    limitations, error corrections, global effects, and sources of algorithms
    o Every file should have the standard ENGR 111/112 header
    o Good code should document itself; if the code requires extensive commenting,
    rewrite the code
    • Variable and routine naming
    o Names should fully and accurately describe the entity the variable represents, or the
    function the routine computes
    o Names should not be too short or too long, somewhere between 10 and 16 characters
    on average is best
    o Pick a naming convention and use it consistently
    ? Differentiate between variable names and routine names, between global and
    local variables, between constants and variables
    ? Use camel case, underscoring, or both (for different things), but not neither
    • Camel Case: numberOfWidgets
    • Underscoring: number_of_widgets
    ? Constants are all uppercase: GRAVITY, COEFF_FRICTION, KG_PER_LBM
    ? Indices are i,j,k
    ? c is a character, s is a string, n is a counting number
    • Error handling
    o Practice defensive programming
    o Handle garbage in
    ? Check values of data from external sources
    ? Check values of all input parameters
    ? Decide how to handle bad inputs
    o Handle expected errors appropriately, e.g. one or a combination of
    ? Substitute the next piece of valid data
    ? Substitute the closest legal value
    ? Return the same answer as the previous time
    ? Return an error code
    ? Display an error/warning message
    ? Log an error/warning message to a file
    ? Shut down
    o Fail gracefully on unexpected errors:
    ? use try/catch blocks
    ? make it very hard to crash the program
    • Code layout and style
    o Use whitespace appropriately to maximize readability
    ? Spaces, tabs, newlines
    o Good visual layout accurately and consistently represents the logical structure of a
    program
    o Group related code together into blocks, like paragraphs in an essay
    ? Put a blank line between blocks
    o No more than 80 characters per line
    ? Indent continuation line
%}
%% CODE:
