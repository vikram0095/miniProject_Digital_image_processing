function varargout = Main(varargin)
% MAIN MATLAB code for Main.fig
%      MAIN, by itself, creates a new MAIN or raises the existing
%      singleton*.
%
%      H = MAIN returns the handle to a new MAIN or the handle to
%      the existing singleton*.
%
%      MAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN.M with the given input arguments.
%
%      MAIN('Property','Value',...) creates a new MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Main

% Last Modified by GUIDE v2.5 04-Nov-2017 09:47:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Main_OpeningFcn, ...
                   'gui_OutputFcn',  @Main_OutputFcn, ...
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


% --- Executes just before Main is made visible.
function Main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Main (see VARARGIN)

% Choose default command line output for Main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Main wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ni1_Callback(hObject, eventdata, handles)
% hObject    handle to ni1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ni1 as text
%        str2double(get(hObject,'String')) returns contents of ni1 as a double


% --- Executes during object creation, after setting all properties.
function ni1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ni1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Browse1.
function Browse1_Callback(hObject, eventdata, handles)
% hObject    handle to Browse1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
addr=Browse()
set(handles.ni1,'String',addr)


function ni2_Callback(hObject, eventdata, handles)
% hObject    handle to ni2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ni2 as text
%        str2double(get(hObject,'String')) returns contents of ni2 as a double


% --- Executes during object creation, after setting all properties.
function ni2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ni2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Browse2.
function Browse2_Callback(hObject, eventdata, handles)
% hObject    handle to Browse2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
addr=Browse()
set(handles.ni2,'String',addr)

% --- Executes on button press in CalcNDVI.
function CalcNDVI_Callback(hObject, eventdata, handles)
% hObject    handle to CalcNDVI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
red=get(handles.ni1,'String');
nir=get(handles.ni2,'String');
nd=ndvi(red,nir);


% --- Executes on button press in CalcNBR.
function CalcNBR_Callback(hObject, eventdata, handles)
% hObject    handle to CalcNBR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
b5=get(handles.nb1,'String');
b7=get(handles.nb2,'String');
ev=nbr(b5,b7);

% --- Executes on button press in Browse7.
function Browse7_Callback(hObject, eventdata, handles)
% hObject    handle to Browse7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
addr=Browse()
set(handles.nb2,'String',addr)


function nb2_Callback(hObject, eventdata, handles)
% hObject    handle to nb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nb2 as text
%        str2double(get(hObject,'String')) returns contents of nb2 as a double


% --- Executes during object creation, after setting all properties.
function nb2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Browse6.
function Browse6_Callback(hObject, eventdata, handles)
% hObject    handle to Browse6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
addr=Browse()
set(handles.nb1,'String',addr)


function nb1_Callback(hObject, eventdata, handles)
% hObject    handle to nb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nb1 as text
%        str2double(get(hObject,'String')) returns contents of nb1 as a double


% --- Executes during object creation, after setting all properties.
function nb1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ev1_Callback(hObject, eventdata, handles)
% hObject    handle to ev1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ev1 as text
%        str2double(get(hObject,'String')) returns contents of ev1 as a double


% --- Executes during object creation, after setting all properties.
function ev1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ev1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Browse3.
function Browse3_Callback(hObject, eventdata, handles)
% hObject    handle to Browse3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
addr=Browse()
set(handles.ev1,'String',addr)


function ev2_Callback(hObject, eventdata, handles)
% hObject    handle to ev2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ev2 as text
%        str2double(get(hObject,'String')) returns contents of ev2 as a double


% --- Executes during object creation, after setting all properties.
function ev2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ev2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Browse4.
function Browse4_Callback(hObject, eventdata, handles)
% hObject    handle to Browse4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
addr=Browse()
set(handles.ev2,'String',addr)

% --- Executes on button press in CalcEVI.
function CalcEVI_Callback(hObject, eventdata, handles)
% hObject    handle to CalcEVI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
b2=get(handles.ev1,'String');
b4=get(handles.ev2,'String');
b5=get(handles.ev3,'String');
ev=evi(b2,b4,b5);


function ev3_Callback(hObject, eventdata, handles)
% hObject    handle to ev3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ev3 as text
%        str2double(get(hObject,'String')) returns contents of ev3 as a double


% --- Executes during object creation, after setting all properties.
function ev3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ev3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Browse5.
function Browse5_Callback(hObject, eventdata, handles)
% hObject    handle to Browse5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
addr=Browse()
set(handles.ev3,'String',addr)
