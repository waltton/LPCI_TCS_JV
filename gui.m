function varargout = gui(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_OutputFcn, ...
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

function gui_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;

guidata(hObject, handles);

function varargout = gui_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function pushbutton2_Callback(hObject, eventdata, handles)
guidata(hObject, executarJogada(handles, 1, 1));

function pushbutton3_Callback(hObject, eventdata, handles)
guidata(hObject, executarJogada(handles, 1, 2));

function pushbutton4_Callback(hObject, eventdata, handles)
guidata(hObject, executarJogada(handles, 1, 3));

function pushbutton5_Callback(hObject, eventdata, handles)
guidata(hObject, executarJogada(handles, 2, 1));

function pushbutton6_Callback(hObject, eventdata, handles)
guidata(hObject, executarJogada(handles, 2, 2));

function pushbutton7_Callback(hObject, eventdata, handles)
guidata(hObject, executarJogada(handles, 2, 3));

function pushbutton8_Callback(hObject, eventdata, handles)
guidata(hObject, executarJogada(handles, 3, 1));

function pushbutton9_Callback(hObject, eventdata, handles)
guidata(hObject, executarJogada(handles, 3, 2));

function pushbutton10_Callback(hObject, eventdata, handles)
guidata(hObject, executarJogada(handles, 3, 3));

function pushbutton11_Callback(hObject, eventdata, handles)
handles = iniciarJogo(handles);
guidata(hObject, handles);
atualizarGUI(handles);
guidata(hObject, handles);

function figure1_CreateFcn(hObject, eventdata, handles)
handles.jogoAtivo = 0;
guidata(hObject, handles);

function figure1_KeyPressFcn(hObject, eventdata, handles)
if isempty(str2num(eventdata.Character))
    if lower(eventdata.Character) == 'n'
        pushbutton11_Callback(hObject, eventdata, handles)
    end
else    
    guidata(hObject, executarJogada(handles, fix((str2num(eventdata.Character) - 1) / 3) + 1, mod(str2num(eventdata.Character) - 1, 3) + 1));
end
function pushbutton11_KeyPressFcn(hObject, eventdata, handles)
figure1_KeyPressFcn(hObject, eventdata, handles)