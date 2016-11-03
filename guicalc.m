function varargout = guicalc(varargin)
% GUICALC MATLAB code for guicalc.fig
%      GUICALC, by itself, creates a new GUICALC or raises the existing
%      singleton*.
%
%      H = GUICALC returns the handle to a new GUICALC or the handle to
%      the existing singleton*.
%
%      GUICALC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUICALC.M with the given input arguments.
%
%      GUICALC('Property','Value',...) creates a new GUICALC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guicalc_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guicalc_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guicalc

% Last Modified by GUIDE v2.5 04-Sep-2016 10:04:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guicalc_OpeningFcn, ...
                   'gui_OutputFcn',  @guicalc_OutputFcn, ...
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


% --- Executes just before guicalc is made visible.
function guicalc_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guicalc (see VARARGIN)

% Choose default command line output for guicalc
handles.output = hObject;
global nf;
nf='';


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guicalc wait for user response (see UIRESUME)
 % uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guicalc_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in sum.
function sum_Callback(hObject, eventdata, handles)
% hObject    handle to sum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f1 flag nf;
nf='';
f1=get(handles.e1,'String');
set(handles.e1,'String','');
flag=1;
guidata(hObject,handles);

function e1_Callback(hObject, eventdata, handles)
% hObject    handle to e1 (see GCBO) get text from e1
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e1 as text
%        str2double(get(hObject,'String')) returns contents of e1 as a double
a=str2double(get(hObject,'String'));
if (isempty(a))
    set(hObject,'String','0');
end
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function e1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in dif.
function dif_Callback(hObject, eventdata, handles)
% hObject    handle to dif (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f1 flag nf;
f1=get(handles.e1,'String');
set(handles.e1,'String','');
flag=2;
nf='';
guidata(hObject,handles);

% --- Executes on button press in div.
function div_Callback(hObject, eventdata, handles)
% hObject    handle to div (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f1 flag nf;
f1=get(handles.e1,'String');
set(handles.e1,'String','');
flag=3;
nf='';
guidata(hObject,handles);

% --- Executes on button press in mul.
function mul_Callback(hObject, eventdata, handles)
% hObject    handle to mul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f1 flag nf; 
f1=get(handles.e1,'String');
set(handles.e1,'String','');
flag=4;
nf='';
guidata(hObject,handles);

% --- Executes on button press in res.
function res_Callback(hObject, eventdata, handles)
% hObject    handle to res (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f2 flag f1 nf;
nf='';
f2=get(handles.e1,'String');
if flag==1
t=str2double(f1)+str2double(f2);
elseif flag==2
    t=str2double(f1)-str2double(f2);
elseif flag==3
    t=str2double(f1)/str2double(f2);
elseif flag==4
    t=str2double(f1)*str2double(f2);
end
set(handles.e1,'String',num2str(t));
guidata(hObject,handles);


% --- Executes on button press in cl.
function cl_Callback(hObject, eventdata, handles)
% hObject    handle to cl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nf;
nf='';
set(handles.e1,'String','');
guidata(hObject,handles);


% --- Executes on button press in del.
function del_Callback(hObject, eventdata, handles)
% hObject    handle to del (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nf;
nf='';
val=get(handles.e1,'String');
l=length(val);
va=val(1:l-1);                                                                               %last value ignored
set(handles.e1,'String',(va));
guidata(hObject,handles);


% --- Executes on button press in n7.
function n7_Callback(hObject, eventdata, handles)
% hObject    handle to n7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nf;                                                                                   %concatenate values
nf=[nf '7'];
set(handles.e1,'String',(nf));
guidata(hObject,handles);


% --- Executes on button press in n8.
function n8_Callback(hObject, eventdata, handles)
% hObject    handle to n8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nf;
nf=[nf '8'];
set(handles.e1,'String',(nf));
guidata(hObject,handles);


% --- Executes on button press in n9.
function n9_Callback(hObject, eventdata, handles)
% hObject    handle to n9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nf;
nf=[nf '9'];
set(handles.e1,'String',(nf));
guidata(hObject,handles);


% --- Executes on button press in n4.
function n4_Callback(hObject, eventdata, handles)
% hObject    handle to n4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nf;
nf=[nf '4'];
set(handles.e1,'String',(nf));
guidata(hObject,handles);


% --- Executes on button press in n5.
function n5_Callback(hObject, eventdata, handles)
% hObject    handle to n5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nf;
nf=[nf '5'];
set(handles.e1,'String',(nf));
guidata(hObject,handles);


% --- Executes on button press in n6.
function n6_Callback(hObject, eventdata, handles)
% hObject    handle to n6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nf;
nf=[nf '6'];
set(handles.e1,'String',(nf));
guidata(hObject,handles);


% --- Executes on button press in n1.
function n1_Callback(hObject, eventdata, handles)
% hObject    handle to n1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nf;
nf=[nf '1'];
set(handles.e1,'String',(nf));
guidata(hObject,handles);


% --- Executes on button press in n2.
function n2_Callback(hObject, eventdata, handles)
% hObject    handle to n2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nf;
nf=[nf '2'];
set(handles.e1,'String',(nf));
guidata(hObject,handles);


% --- Executes on button press in n3.
function n3_Callback(hObject, eventdata, handles)
% hObject    handle to n3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nf;
nf=[nf '3'];
set(handles.e1,'String',(nf));
guidata(hObject,handles);


% --- Executes on button press in n0.
function n0_Callback(hObject, eventdata, handles)
% hObject    handle to n0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nf;
nf=[nf '0'];
set(handles.e1,'String',(nf));
guidata(hObject,handles);


% --- Executes on button press in ndecm.
function ndecm_Callback(hObject, eventdata, handles)
% hObject    handle to ndecm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nf;
nf=[nf '.'];
set(handles.e1,'String',(nf));
guidata(hObject,handles);


% --- Executes on button press in sinb.
function sinb_Callback(hObject, eventdata, handles)
% hObject    handle to sinb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sv=get(handles.e1,'String');
sv=str2double(sv);
sv=sin(sv);
set(handles.e1,'String',num2str(sv));
guidata(hObject,handles);

% --- Executes on button press in cosb.
function cosb_Callback(hObject, eventdata, handles)
% hObject    handle to cosb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sv=get(handles.e1,'String');
sv=str2double(sv);
sv=cos(sv);
set(handles.e1,'String',num2str(sv));
guidata(hObject,handles);


% --- Executes on button press in tanb.
function tanb_Callback(hObject, eventdata, handles)
% hObject    handle to tanb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sv=get(handles.e1,'String');
sv=str2double(sv);
sv=tan(sv);
set(handles.e1,'String',num2str(sv));
guidata(hObject,handles);


% --- Executes on button press in sqrtb.
function sqrtb_Callback(hObject, eventdata, handles)
% hObject    handle to sqrtb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sv=get(handles.e1,'String');
sv=str2double(sv);
sv=sqrt(sv);
set(handles.e1,'String',num2str(sv));
guidata(hObject,handles);
