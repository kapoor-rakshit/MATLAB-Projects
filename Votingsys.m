function varargout = project(varargin)
% PROJECT MATLAB code for project.fig
%      PROJECT, by itself, creates a new PROJECT or raises the existing
%      singleton*.
%
%      H = PROJECT returns the handle to a new PROJECT or the handle to
%      the existing singleton*.
%
%      PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT.M with the given input arguments.
%
%      PROJECT('Property','Value',...) creates a new PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project

% Last Modified by GUIDE v2.5 03-Nov-2016 06:41:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project_OpeningFcn, ...
                   'gui_OutputFcn',  @project_OutputFcn, ...
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


% --- Executes just before project is made visible.
function project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to project (see VARARGIN)

% Choose default command line output for project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

global f1 f2 f3 f4 f5;
f1=0;f2=0;f3=0;f4=0;f5=0;
global m1 m2 m3 m4 m5;
m1=0;m2=0;m3=0;m4=0;m5=0;

axes(handles.axes1);
imshow('back.jpg');

% --- Executes on selection change in male.
function male_Callback(hObject, eventdata, handles)
% hObject    handle to male (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns male contents as cell array
%        contents{get(hObject,'Value')} returns selected item from male
global m;
m=get(handles.male,'value');
if m==1
    axes(handles.axes1);
    imshow('back.jpg');
elseif m==2
    axes(handles.axes1);
    imshow('rakesh.jpg');
elseif m==3
    axes(handles.axes1);
    imshow('Gaurav.jpg');
elseif m==4
    axes(handles.axes1);
    imshow('rizwan.jpg');
elseif m==5
    axes(handles.axes1);
    imshow('abhishek.jpg');
elseif m==6
    axes(handles.axes1);
    imshow('rajpal.jpg');
else
    axes(handles.axes1);
    imshow('back.jpg');
end

% --- Executes during object creation, after setting all properties.
function male_CreateFcn(hObject, eventdata, handles)
% hObject    handle to male (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in female.
function female_Callback(hObject, eventdata, handles)
% hObject    handle to female (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns female contents as cell array
%        contents{get(hObject,'Value')} returns selected item from female
global f;
f=get(handles.female,'value');
if f==1
    axes(handles.axes1);
    imshow('back.jpg');
elseif f==2
    axes(handles.axes1);
    imshow('heenu.jpg');
elseif f==3
    axes(handles.axes1);
    imshow('gaganjot.jpg');
elseif f==4
    axes(handles.axes1);
    imshow('mrinali.png');
elseif f==5
    axes(handles.axes1);
    imshow('swadha.jpe');
elseif f==6
    axes(handles.axes1);
    imshow('vidhi.jpe');
else
    axes(handles.axes1);
    imshow('back.jpg');
end


% --- Executes during object creation, after setting all properties.
function female_CreateFcn(hObject, eventdata, handles)
% hObject    handle to female (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in submit_male.
function submit_male_Callback(hObject, eventdata, handles)
% hObject    handle to submit_male (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global m f m1 m2 m3 m4 m5;
if m==2
    m1=m1+1;
elseif m==3
    m2=m2+1;
elseif m==4
    m3=m3+1;
elseif m==5
    m4=m4+1;
elseif m==6
    m5=m5+1;
end
[y,fs]=wavread('beep-02.wav');
sound(y,fs);
set(handles.male,'value',1);
set(handles.female,'value',1);
axes(handles.axes1);
imshow('back.jpg');
f=1;
m=1;
msgbox('Thanks for your response.   Have a nice day','Success','help');
set(handles.pass,'String','');


function pass_Callback(hObject, eventdata, handles)
% hObject    handle to pass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pass as text
%        str2double(get(hObject,'String')) returns contents of pass as a double
global pword;
pword=get(handles.pass,'String');

% --- Executes during object creation, after setting all properties.
function pass_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in check.
function check_Callback(hObject, eventdata, handles)
% hObject    handle to check (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pword;
global f1 f2 f3 f4 f5;
global m1 m2 m3 m4 m5;
ma=[];
if strcmp(pword,'nitjalandhar')
set(handles.ct_male1,'String',m1);  
ma(1)=(m1);
set(handles.ct_male2,'String',m2); 
ma(2)=(m2);
set(handles.ct_male3,'String',m3); 
ma(3)=(m3);
set(handles.ct_male4,'String',m4); 
ma(4)=(m4);
set(handles.ct_male5,'String',m5); 
ma(5)=(m5);
fa=[];
set(handles.ct_female1,'String',f1); 
fa(1)=f1;
set(handles.ct_female2,'String',f2); 
fa(2)=f2;
set(handles.ct_female3,'String',f3); 
fa(3)=f3;
set(handles.ct_female4,'String',f4); 
fa(4)=f4;
set(handles.ct_female5,'String',f5); 
fa(5)=f5;

mmx=0;
mind=1;
for i=1:1:5
    if ma(i)>mmx
        mmx=ma(i);
        mind=i;
    end
end
fmx=0;
find=1;
for i=1:1:5
    if fa(i)>fmx
        fmx=fa(i);
        find=i;
    end
end
ml='';
fl='';
if mind==1
    ml='rakesh';
elseif mind==2
    ml='gaurav';
elseif mind==3
    ml='rizwan';
elseif mind==4
    ml='abhishek';
elseif mind==5
    ml='rajpal';
end

if find==1
    fl='heenu';
elseif find==2
    fl='gaganjot';
elseif find==3
    fl='swadha';
elseif find==4
    fl='mrinali';
elseif find==5
    fl='vidhi';
end
cm=0;
cf=0;
for i=1:1:5
    if ma(i)==mmx
        cm=cm+1;
    end
end
for i=1:1:5
    if fa(i)==fmx
        cf=cf+1;
    end
end
if cm>1
    fmans='There is a tie in male leaders';
else
fmans=['Your male leader is ' ml];
end
if cf>1
    ffans='there is a tie in female leaders';
else
    ffans=['Your female leader is ' fl];
end

caUserInput =[fmans ' and ' ffans];
caUserInput = char(caUserInput); 
NET.addAssembly('System.Speech');
obj = System.Speech.Synthesis.SpeechSynthesizer;
obj.Volume = 100;
Speak(obj, caUserInput);                                                  %...............sound feedback 
t=1:1:5;
y=ma(t);
figure();
stem(t,y,'r','fill');                                         %......plots
xlabel('Rakesh                  Gaurav                    Rizwan                    Abhishek                   Rajpal');
ylabel('No. of votes');
figure();
x=fa(t);
stem(t,x,'r','fill');
xlabel('Heenu                Gaganjot                  Swadha                    Mrinali                    Vidhi');
ylabel('No. of votes');
else
    msgbox('You are not authenticated to check results','Warning','warn');
    caUserInput ='you are not authenticated to check results';
caUserInput = char(caUserInput); 
NET.addAssembly('System.Speech');
obj = System.Speech.Synthesis.SpeechSynthesizer;
obj.Volume = 100;
Speak(obj, caUserInput);                                           %.............................sound feedback
end
set(handles.pass,'String','');
pword='jkl';

% --- Executes on button press in submit__female.
function submit__female_Callback(hObject, eventdata, handles)
% hObject    handle to submit__female (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global m f f1 f2 f3 f4 f5;
if f==2
    f1=f1+1;
elseif f==3
    f2=f2+1;
elseif f==4
    f3=f3+1;
elseif f==5
    f4=f4+1;
elseif f==6
    f5=f5+1;
end
set(handles.pass,'String','');
[y,fs]=wavread('beep-02.wav');
sound(y,fs);
set(handles.female,'value',1);
set(handles.male,'value',1);
f=1;
m=1;
axes(handles.axes1);
imshow('back.jpg');
msgbox('Thanks for your response.   Have a nice day','Success','help');
