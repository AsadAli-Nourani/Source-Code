
function varargout = untitled2(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 06-Apr-2020 11:25:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled2_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled2_OutputFcn, ...
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



% --- Executes just before untitled is made visible.
function untitled2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = untitled2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in one.
function one_Callback(hObject, eventdata, handles)
% hObject    handle to one (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
str=strcat(str,'1');
set(handles.text2,'string',str);

% --- Executes on button press in two.
function two_Callback(hObject, eventdata, handles)
% hObject    handle to two (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
str=strcat(str,'2');
set(handles.text2,'string',str);

% --- Executes on button press in AC.
function AC_Callback(hObject, eventdata, handles)
% hObject    handle to AC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
set(handles.text7,'string','');
set(handles.text2,'string','');

% --- Executes on button press in percentage.
function percentage_Callback(hObject, eventdata, handles)
% hObject    handle to percentage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
set(handles.text2,'string',str);
a=str2num(get(handles.text2,'string'));
d=a/100;
set(handles.text7,'string',d)


% --- Executes on button press in minus.
function minus_Callback(hObject, eventdata, handles)
% hObject    handle to minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
str=strcat(str,'-');
set(handles.text2,'string',str);
a=str2num(get(handles.text2,'string'));
b=str2num(get(handles.text2,'string'));
c=a-b;
set(handles.text7,'string',c)



% --- Executes on button press in divide.
function divide_Callback(hObject, eventdata, handles)
% hObject    handle to divide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
str=strcat(str,'/');
set(handles.text2,'string',str);
a=str2num(get(handles.text2,'string'));
b=str2num(get(handles.text2,'string'));
c=a/b;
set(handles.text7,'string',c)



% --- Executes on button press in equal.
function equal_Callback(hObject, eventdata, handles)

% hObject    handle to equal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
str=eval(str)
set(handles.text7,'string',str);

% --- Executes on button press in power.
function power_Callback(hObject, eventdata, handles)
% hObject    handle to power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)str=get(handles.text5,'string');
str=get(handles.text2,'string');
str=strcat(str,'^');
set(handles.text2,'string',str);
a=str2num(get(handles.text2,'string'));
b=str2num(get(handles.text2,'string'));
c=(a).^b;
set(handles.text7,'string',c)



% --- Executes on button press in doublezero.
function doublezero_Callback(hObject, eventdata, handles)
% hObject    handle to doublezero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
str=strcat(str,'00');
set(handles.text2,'string',str);


% --- Executes on button press in dot.
function dot_Callback(hObject, eventdata, handles)
% hObject    handle to dot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
str=strcat(str,'.');
set(handles.text2,'string',str);


% --- Executes on button press in zero.
function zero_Callback(hObject, eventdata, handles)

% hObject    handle to zero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
str=strcat(str,'0');
set(handles.text2,'string',str);

% --- Executes on button press in multiply.
function multiply_Callback(hObject, eventdata, handles)
% hObject    handle to multiply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
str=strcat(str,'*');
set(handles.text2,'string',str)
a=str2num(get(handles.text2,'string'));
b=str2num(get(handles.text2,'string'));
c=a*b;
set(handles.text7,'string',c)


% --- Executes on button press in nine.
function nine_Callback(hObject, eventdata, handles)
% hObject    handle to nine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
str=strcat(str,'9');
set(handles.text2,'string',str);


% --- Executes on button press in eight.
function eight_Callback(hObject, eventdata, handles)
% hObject    handle to eight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
str=strcat(str,'8');
set(handles.text2,'string',str);

% --- Executes on button press in seven.
function seven_Callback(hObject, eventdata, handles)
% hObject    handle to seven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
str=strcat(str,'7');
set(handles.text2,'string',str);


% --- Executes on button press in plus.
function plus_Callback(hObject, eventdata, handles)
% hObject    handle to plus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
str=strcat(str,'+');
set(handles.text2,'string',str);
a=str2num(get(handles.text2,'string'));
b=str2num(get(handles.text2,'string'));
c=a+b;
set(handles.text7,'string',c)

% --- Executes on button press in six.
function six_Callback(hObject, eventdata, handles)
% hObject    handle to six (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
str=strcat(str,'6');
set(handles.text2,'string',str);

% --- Executes on button press in five.
function five_Callback(hObject, eventdata, handles)
% hObject    handle to five (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
str=strcat(str,'5');
set(handles.text2,'string',str);

% --- Executes on button press in four.
function four_Callback(hObject, eventdata, handles)
% hObject    handle to four (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
str=strcat(str,'4');
set(handles.text2,'string',str);


% --- Executes on button press in three.
function three_Callback(hObject, eventdata, handles)
% hObject    handle to three (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
str=strcat(str,'3');
set(handles.text2,'string',str);




% --- Executes on button press in Delete.
function Delete_Callback(hObject, eventdata, handles)
% hObject    handle to Delete (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
str(end)='';
set(handles.text2,'string',str)


% --- Executes on button press in braces1.
function braces1_Callback(hObject, eventdata, handles)
% hObject    handle to braces1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
str=strcat(str,'(');
set(handles.text2,'string',str)


% --- Executes on button press in braces.
function braces_Callback(hObject, eventdata, handles)
% hObject    handle to braces (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
str=strcat(str,')');
set(handles.text2,'string',str)


% --- Executes on button press in Squareroot.
function Squareroot_Callback(hObject, eventdata, handles)
% hObject    handle to Squareroot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
set(handles.text2,'string',str);
a=str2double(get(handles.text2,'string'));
g=sqrt(a);
set(handles.text7,'string',g)


% --- Executes on button press in tangentDegree.
function tangentDegree_Callback(hObject, eventdata, handles)
% hObject    handle to tangentDegree (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
set(handles.text2,'string',str);
a=str2double(get(handles.text2,'string'));
o=tand(a);
set(handles.text7,'string',o)


% --- Executes on button press in SineDegree.
function SineDegree_Callback(hObject, eventdata, handles)
% hObject    handle to SineDegree (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
set(handles.text2,'string',str);
b=str2double(get(handles.text2,'string'));
h=sind(b);
set(handles.text7,'string',h)

% --- Executes on button press in cosineDegree.
function cosineDegree_Callback(hObject, ~, handles)
% hObject    handle to cosineDegree (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.text2,'string');
set(handles.text2,'string',str);
a=str2double(get(handles.text2,'string'));
s=cosd(a);
set(handles.text7,'string',s)
