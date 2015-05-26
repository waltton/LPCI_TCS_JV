function [ ] = atualizarGUI( handles )
set(handles.pushbutton2, 'String', handles.posicoes(1, 1));
set(handles.pushbutton3, 'String', handles.posicoes(1, 2));
set(handles.pushbutton4, 'String', handles.posicoes(1, 3));

set(handles.pushbutton5, 'String', handles.posicoes(2, 1));
set(handles.pushbutton6, 'String', handles.posicoes(2, 2));
set(handles.pushbutton7, 'String', handles.posicoes(2, 3));

set(handles.pushbutton8, 'String', handles.posicoes(3, 1));
set(handles.pushbutton9, 'String', handles.posicoes(3, 2));
set(handles.pushbutton10, 'String', handles.posicoes(3, 3));

end

