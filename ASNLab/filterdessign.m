function varargout = filterdessign(varargin)
% FILTERDESSIGN MATLAB code for filterdessign.fig
%      FILTERDESSIGN, by itself, creates a new FILTERDESSIGN or raises the existing
%      singleton*.
%
%      H = FILTERDESSIGN returns the handle to a new FILTERDESSIGN or the handle to
%      the existing singleton*.
%
%      FILTERDESSIGN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FILTERDESSIGN.M with the given input arguments.
%
%      FILTERDESSIGN('Property','Value',...) creates a new FILTERDESSIGN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before filterdessign_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to filterdessign_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help filterdessign

% Last Modified by GUIDE v2.5 04-Oct-2015 19:43:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @filterdessign_OpeningFcn, ...
                   'gui_OutputFcn',  @filterdessign_OutputFcn, ...
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


% --- Executes just before filterdessign is made visible.
function filterdessign_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to filterdessign (see VARARGIN)

% Choose default command line output for filterdessign
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes filterdessign wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = filterdessign_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
R=get(handles.r,'string');
Fc=get(handles.fc,'string');
Fin1=get(handles.fin1,'string');
Fin2=get(handles.fin2,'string');
a=str2num(R);
b=str2num(Fc);
c=str2num(Fin1);
d=str2num(Fin2);
L=a/(pi*b);
la=L/2;
C=1/(pi*b*a);
m=power(1-power(b/c,2),0.5);
mla=m*la;
mmla=L*((1-power(m,2))/4*m);
mca=m*C;
m2=power(1-power(b/d,2),0.5);
mmmla=m2*la;
mmmmla=L*((1-power(m,2))/2*m);
mmca=m2*C/2;
e=num2str(la);
l=num2str(C);
f=num2str(mla);
g=num2str(mmla);
h=num2str(mca);
i=num2str(mmmla);
j=num2str(mmmmla);
k=num2str(mmca);
set(handles.l,'string',e);
set(handles.c,'string',l);
set(handles.ml,'string',f);
set(handles.mml,'string',g);
set(handles.mc,'string',h);
set(handles.mmml,'string',i);
set(handles.mmmml,'string',j);
set(handles.mmc,'string',k);
guidata(hObject.handles);
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

R=get(handles.r1,'string');
Fc=get(handles.fc1,'string');
Fin1=get(handles.fin11,'string');
Fin2=get(handles.fin21,'string');
a=str2num(R);
b=str2num(Fc);
c=str2num(Fin1);
d=str2num(Fin2);
L=a/(4*pi*b);
C=1/(4*pi*b*a);
ca=C/2;
m=power(1-power(c/b,2),0.5);
mla=m*ca;
mmla=C*((1-power(m,2))/4*m);
mca=L/m;
m2=power(1-power(d/b,2),0.5);
mmmla=m2*ca;
mmmmla=C*((1-power(m,2))/2*m);
mmca=m2*L/2;
e=num2str(ca);
l=num2str(L);
f=num2str(mla);
g=num2str(mmla);
h=num2str(mca);
i=num2str(mmmla);
j=num2str(mmmmla);
k=num2str(mmca);
set(handles.l1,'string',e);
set(handles.c1,'string',l);
set(handles.ml1,'string',f);
set(handles.mml1,'string',g);
set(handles.mc1,'string',h);
set(handles.mmml1,'string',i);
set(handles.mmmml1,'string',j);
set(handles.mmc1,'string',k);
guidata(hObject.handles);
% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
R=get(handles.r11,'string');
Fc1=get(handles.fc11,'string');
Fc2=get(handles.fc22,'string');
a=str2num(R);
b=str2num(Fc1);
c=str2num(Fc2);
l1=(a/(pi*(c-b)))/2;
c1=2*((c-b)/(4*pi*a*c*b));
l2=a*(c-b)/(4*pi*b*c);
c2=1/(a*pi*(c-b));
e=num2str(l1);
l=num2str(c1);
f=num2str(l2);
g=num2str(c2);
set(handles.l11,'string',e);
set(handles.c11,'string',l);
set(handles.l22,'string',f);
set(handles.c22,'string',g);
guidata(hObject.handles);
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

R=get(handles.r111,'string');
Fc1=get(handles.fc111,'string');
Fc2=get(handles.fc222,'string');
a=str2num(R);
b=str2num(Fc1);
c=str2num(Fc2);
l1=(a*(c-b)/(pi*c*b))/2;
c1=2*(1/(4*pi*a*(c-b)));
l2=a/(4*pi*(b-c));
c2=(c-b)/(pi*a*c*b);
e=num2str(l1);
l=num2str(c1);
f=num2str(l2);
g=num2str(c2);
set(handles.l111,'string',e);
set(handles.c111,'string',l);
set(handles.l222,'string',f);
set(handles.c222,'string',g);
guidata(hObject.handles);

function r_Callback(hObject, eventdata, handles)
% hObject    handle to r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r as text
%        str2double(get(hObject,'String')) returns contents of r as a double


% --- Executes during object creation, after setting all properties.
function r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fc_Callback(hObject, eventdata, handles)
% hObject    handle to fc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fc as text
%        str2double(get(hObject,'String')) returns contents of fc as a double


% --- Executes during object creation, after setting all properties.
function fc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fin1_Callback(hObject, eventdata, handles)
% hObject    handle to fin1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fin1 as text
%        str2double(get(hObject,'String')) returns contents of fin1 as a double


% --- Executes during object creation, after setting all properties.
function fin1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fin1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fin2_Callback(hObject, eventdata, handles)
% hObject    handle to fin2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fin2 as text
%        str2double(get(hObject,'String')) returns contents of fin2 as a double


% --- Executes during object creation, after setting all properties.
function fin2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fin2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r1_Callback(hObject, eventdata, handles)
% hObject    handle to r1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r1 as text
%        str2double(get(hObject,'String')) returns contents of r1 as a double


% --- Executes during object creation, after setting all properties.
function r1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fc1_Callback(hObject, eventdata, handles)
% hObject    handle to fc1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fc1 as text
%        str2double(get(hObject,'String')) returns contents of fc1 as a double


% --- Executes during object creation, after setting all properties.
function fc1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fc1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fin11_Callback(hObject, eventdata, handles)
% hObject    handle to fin11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fin11 as text
%        str2double(get(hObject,'String')) returns contents of fin11 as a double


% --- Executes during object creation, after setting all properties.
function fin11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fin11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fin21_Callback(hObject, eventdata, handles)
% hObject    handle to fin21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fin21 as text
%        str2double(get(hObject,'String')) returns contents of fin21 as a double


% --- Executes during object creation, after setting all properties.
function fin21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fin21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r11_Callback(hObject, eventdata, handles)
% hObject    handle to r11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r11 as text
%        str2double(get(hObject,'String')) returns contents of r11 as a double


% --- Executes during object creation, after setting all properties.
function r11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fc11_Callback(hObject, eventdata, handles)
% hObject    handle to fc11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fc11 as text
%        str2double(get(hObject,'String')) returns contents of fc11 as a double


% --- Executes during object creation, after setting all properties.
function fc11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fc11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fc22_Callback(hObject, eventdata, handles)
% hObject    handle to fc22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fc22 as text
%        str2double(get(hObject,'String')) returns contents of fc22 as a double


% --- Executes during object creation, after setting all properties.
function fc22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fc22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r111_Callback(hObject, eventdata, handles)
% hObject    handle to r111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r111 as text
%        str2double(get(hObject,'String')) returns contents of r111 as a double


% --- Executes during object creation, after setting all properties.
function r111_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fc111_Callback(hObject, eventdata, handles)
% hObject    handle to fc111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fc111 as text
%        str2double(get(hObject,'String')) returns contents of fc111 as a double


% --- Executes during object creation, after setting all properties.
function fc111_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fc111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fc222_Callback(hObject, eventdata, handles)
% hObject    handle to fc222 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fc222 as text
%        str2double(get(hObject,'String')) returns contents of fc222 as a double


% --- Executes during object creation, after setting all properties.
function fc222_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fc222 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
