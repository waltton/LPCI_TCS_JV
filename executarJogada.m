function [ h ] = executarJogada( handles, linha, coluna )

handles.posicoes(linha, coluna) = handles.jogadorAtual;

atualizarGUI(handles);

h = handles;

end

