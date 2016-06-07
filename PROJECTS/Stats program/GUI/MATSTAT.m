function varargout = MATSTAT(varargin)
% MATSTAT MATLAB code for MATSTAT.fig
%      MATSTAT, by itself, creates a new MATSTAT or raises the existing
%      singleton*.
%
%      H = MATSTAT returns the handle to a new MATSTAT or the handle to
%      the existing singleton*.
%
%      MATSTAT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MATSTAT.M with the given input arguments.
%
%      MATSTAT('Property','Value',...) creates a new MATSTAT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MATSTAT_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MATSTAT_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MATSTAT

% Last Modified by GUIDE v2.5 30-May-2016 21:37:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MATSTAT_OpeningFcn, ...
                   'gui_OutputFcn',  @MATSTAT_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before MATSTAT is made visible.
function MATSTAT_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MATSTAT (see VARARGIN)
clc
% Choose default command line output for MATSTAT
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MATSTAT wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MATSTAT_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Login.
function Login_Callback(hObject, eventdata, handles)
% hObject    handle to Login (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in File Load.
function load_file_Callback(hObject, eventdata, handles)
% hObject    handle to load_file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=double.empty
[fn,pn,fi]=uigetfile({'*.mat';'*.m';'*.xlsx';'*.txt';'*.*'},'Select list','Normal.txt');
if isstruct(fn) == 1 ;
  x=fn.x
  fnx(:,1) = fn.y; 
elseif fi == 3; %is an excel file
        fnx=xlsread(fn,-1);
else isstruct(fn) == 0;
    fnx=double(fn); % converts from var to array 
end
[row,column] = size(fnx);
if row < column;
    fnx = fnx'
end
C=userstat(fnx);
if isempty(x) == 1;
x=linspace(0,C(9,1),C(10,1));
end

% --- Executes on button press in Clear Data.
function Clear_Data_Callback(hObject, eventdata, handles)
% hObject    handle to Clear_Data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Save.
function Save_As_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Histogram Maker.
function Hist_Callback(hObject, eventdata, handles)
% hObject    handle to Hist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Hist Fitter.
function Hist_fit_Callback(hObject, eventdata, handles)
% hObject    handle to Hist_fit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Prob. Plotter.
function Formal_Quit_Callback(hObject, eventdata, handles)
% hObject    handle to Formal_Quit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Probability.
function Prob_Findr_Callback(hObject, eventdata, handles)
% hObject    handle to Prob_Findr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Quit.
function Prob_Plotter_Callback(hObject, eventdata, handles)
% hObject    handle to Prob_Plotter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Regression.
function Regression_Callback(hObject, eventdata, handles)
% hObject    handle to Regression (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
