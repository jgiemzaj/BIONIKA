function varargout = GOOD_SIR(varargin)

% Last Modified by GUIDE v2.5 07-May-2018 12:39:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GOOD_SIR_OpeningFcn, ...
                   'gui_OutputFcn',  @GOOD_SIR_OutputFcn, ...
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

% --- Executes just before GOOD_SIR is made visible.
function GOOD_SIR_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GOOD_SIR (see VARARGIN)

% Choose default command line output for GOOD_SIR
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global S0
global I0

global beta
global lambda
global tmax

% --- Outputs from this function are returned to the command line.
function varargout = GOOD_SIR_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function SIR_S0_Callback(hObject, eventdata, handles)
% hObject    handle to SIR_S0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes during object creation, after setting all properties.
function SIR_S0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SIR_S0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SIR_a_Callback(hObject, eventdata, handles)
% hObject    handle to SIR_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SIR_a as text
%        str2double(get(hObject,'String')) returns contents of SIR_a as a double


% --- Executes during object creation, after setting all properties.
function SIR_a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SIR_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SIR_I0_Callback(hObject, eventdata, handles)
% hObject    handle to SIR_I0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SIR_I0 as text
%        str2double(get(hObject,'String')) returns contents of SIR_I0 as a double


% --- Executes during object creation, after setting all properties.
function SIR_I0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SIR_I0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SIR_d_Callback(hObject, eventdata, handles)
% hObject    handle to SIR_d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SIR_d as text
%        str2double(get(hObject,'String')) returns contents of SIR_d as a double


% --- Executes during object creation, after setting all properties.
function SIR_d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SIR_d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SIR_R0_Callback(hObject, eventdata, handles)
% hObject    handle to SIR_R0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SIR_R0 as text
%        str2double(get(hObject,'String')) returns contents of SIR_R0 as a double


% --- Executes during object creation, after setting all properties.
function SIR_R0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SIR_R0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SIS_alfa_Callback(hObject, eventdata, handles)
% hObject    handle to SIS_alfa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SIS_alfa as text
%        str2double(get(hObject,'String')) returns contents of SIS_alfa as a double


% --- Executes during object creation, after setting all properties.
function SIS_alfa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SIS_alfa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SIR_beta_Callback(hObject, eventdata, handles)
% hObject    handle to SIR_beta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SIR_beta as text
%        str2double(get(hObject,'String')) returns contents of SIR_beta as a double


% --- Executes during object creation, after setting all properties.
function SIR_beta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SIR_beta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SIR_m_Callback(hObject, eventdata, handles)
% hObject    handle to SIR_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SIR_m as text
%        str2double(get(hObject,'String')) returns contents of SIR_m as a double


% --- Executes during object creation, after setting all properties.
function SIR_m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SIR_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SIR_alpha1_Callback(hObject, eventdata, handles)
% hObject    handle to SIR_alpha1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SIR_alpha1 as text
%        str2double(get(hObject,'String')) returns contents of SIR_alpha1 as a double


% --- Executes during object creation, after setting all properties.
function SIR_alpha1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SIR_alpha1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SIR_alpha2_Callback(hObject, eventdata, handles)
% hObject    handle to SIR_alpha2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SIR_alpha2 as text
%        str2double(get(hObject,'String')) returns contents of SIR_alpha2 as a double


% --- Executes during object creation, after setting all properties.
function SIR_alpha2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SIR_alpha2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SIR_r_Callback(hObject, eventdata, handles)
% hObject    handle to SIR_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SIR_r as text
%        str2double(get(hObject,'String')) returns contents of SIR_r as a double


% --- Executes during object creation, after setting all properties.
function SIR_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SIR_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SIR_tmax_Callback(hObject, eventdata, handles)
% hObject    handle to SIR_tmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SIR_tmax as text
%        str2double(get(hObject,'String')) returns contents of SIR_tmax as a double


% --- Executes during object creation, after setting all properties.
function SIR_tmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SIR_tmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function button_symuluj_Callback(hObject, eventdata, handles)
global S0
global I0

global lambda
global beta
global tmax
global alfa


% S0=str2double(get(handles.SIR_S0,'String'));
S0=get(handles.sliderSI,'value');
I0=abs(1-S0);

lambda=get(handles.sliderLambda,'value')
beta=get(handles.sliderBeta,'value')
tmax=str2double(get(handles.SIR_tmax,'String'));

h = 0.1; % krok ró¿niczkowania
[wektor_czasu, rezultat] = ode45(@model_matematyczny_sir, [0, tmax], [S0, I0],lambda,beta ,h);
% wyznaczenie proporcji osobników podatnych,
% zainfekowanych i uodpornionych
osobniki_podatne = rezultat(:, 1);
osobniki_zainfekowane = rezultat(:, 2);
osobniki_uodpornione = 1-rezultat(:, 1)-rezultat(:, 1);
% przebiegi proporcji osobników podatnych,
% zainfekowanych i uodpornionych w zale¿noœci od
% czasu

plot(wektor_czasu, osobniki_podatne, 'r-');
hold on;
plot(wektor_czasu, osobniki_zainfekowane, 'b-'); 
plot(wektor_czasu, osobniki_uodpornione, 'g-'); 
hold off
% ustawienie legendy, tytu³u, opisów osi oraz
% uwidocznienie siatki
legend('S - Osobniki podatne', ...
'I - Osobniki zainfekowane', 'R - Osobniki uodpornione');
title(['Model epidemii SIR (S_0 = 0.4,'...
' I_0 = 0.6, \delta < 1)']);
xlabel('Czas [tyg]'); ylabel('Proporcja populacji'); grid on





function SIS_gamma_Callback(hObject, eventdata, handles)
% hObject    handle to SIS_gamma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SIS_gamma as text
%        str2double(get(hObject,'String')) returns contents of SIS_gamma as a double


% --- Executes during object creation, after setting all properties.
function SIS_gamma_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SIS_gamma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sliderSI_Callback(hObject, eventdata, handles)
% hObject    handle to sliderSI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderSI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderSI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderAlfa_Callback(hObject, eventdata, handles)
% hObject    handle to sliderAlfa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderAlfa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderAlfa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderBeta_Callback(hObject, eventdata, handles)
% hObject    handle to sliderBeta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderBeta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderBeta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderLambda_Callback(hObject, eventdata, handles)
% hObject    handle to sliderLambda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderLambda_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderLambda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
