function varargout = model_SIR(varargin)

% Last Modified by GUIDE v2.5 16-Apr-2018 18:07:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @model_SIR_OpeningFcn, ...
                   'gui_OutputFcn',  @model_SIR_OutputFcn, ...
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


% --- Executes just before model_SIR is made visible.
function model_SIR_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to model_SIR (see VARARGIN)

% Choose default command line output for model_SIR
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global S0
global I0
global lambda
global beta
global tmax


% UIWAIT makes model_SIR wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = model_SIR_OutputFcn(hObject, eventdata, handles) 
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

% Hints: get(hObject,'String') returns contents of SIR_S0 as text
%        str2double(get(hObject,'String')) returns contents of SIR_S0 as a double


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



function SIR_lambda_Callback(hObject, eventdata, handles)
% hObject    handle to SIR_lambda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SIR_lambda as text
%        str2double(get(hObject,'String')) returns contents of SIR_lambda as a double


% --- Executes during object creation, after setting all properties.
function SIR_lambda_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SIR_lambda (see GCBO)
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

S0=str2double(get(handles.SIR_S0,'String'));
I0=str2double(get(handles.SIR_I0,'String'));
lambda=str2double(get(handles.SIR_lambda,'String'));
beta=str2double(get(handles.SIR_beta,'String'));
tmax=str2double(get(handles.SIR_tmax,'String'))

% Dane wejœciowe modelu:
h = 0.5; % krok ró¿niczkowania (pocz¹tkowy)
S0 = 0.4; % proporcja osobników podatnych w t0
I0 = 0.6; % proporcja osobników zainfekowanych w t0
% Rozwi¹zanie równania ró¿niczkowego metod¹ przybli¿on¹ 
% Dormand-Prince
[wektor_czasu, rezultat] = ...
ode45(@model_matematyczny_sir, [0, tmax], [S0, I0], h,lambda,beta);
% wyznaczenie proporcji osobników podatnych,
% zainfekowanych i uodpornionych
osobniki_podatne = rezultat(:, 1);
osobniki_zainfekowane = rezultat(:, 2);
osobniki_uodpornione = 1-rezultat(:, 1)-rezultat(:, 2);
% przebiegi proporcji osobników podatnych,
% zainfekowanych i uodpornionych w zale¿noœci od
% czasu

axes(handles.SIR_show)


plot(wektor_czasu, osobniki_podatne, 'r-');
hold on
plot(wektor_czasu, osobniki_zainfekowane, 'b-'); 
plot(wektor_czasu, osobniki_uodpornione, 'g-'); 
hold off
% ustawienie legendy, tytu³u, opisów osi oraz
% uwidocznienie siatki
legend('Osobniki podatne', ...
'Osobniki zainfekowane', 'Osobniki uodpornione');
title(['Model epidemii SIR (S_0 = 0.4,'...
' I_0 = 0.6, \delta < 1)']);
xlabel('Czas'); ylabel('Proporcja populacji'); grid on
