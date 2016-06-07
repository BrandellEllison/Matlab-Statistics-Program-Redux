function varargout = Statsmaster(varargin)
% STATSMASTER MATLAB code for Statsmaster.fig
%      STATSMASTER, by itself, creates a new STATSMASTER or raises the existing
%      singleton*.
%
%      H = STATSMASTER returns the handle to a new STATSMASTER or the handle to
%      the existing singleton*.
%
%      STATSMASTER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STATSMASTER.M with the given input arguments.
%
%      STATSMASTER('Property','Value',...) creates a new STATSMASTER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Statsmaster_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Statsmaster_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Statsmaster

% Last Modified by GUIDE v2.5 30-May-2016 19:38:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Statsmaster_OpeningFcn, ...
                   'gui_OutputFcn',  @Statsmaster_OutputFcn, ...
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


% --- Executes just before Statsmaster is made visible.
function Statsmaster_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Statsmaster (see VARARGIN)

% Choose default command line output for Statsmaster
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Statsmaster wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Statsmaster_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
