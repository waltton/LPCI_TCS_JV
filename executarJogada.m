function [ h ] = executarJogada( handles, linha, coluna )

if jogadaEhPermitida(handles, linha, coluna)
    handles.posicoes(linha, coluna) = handles.jogadorAtual;
    atualizarGUI(handles);
    handles.jogadorAtual = defineProximoJogador(handles.jogadorAtual);
else
    disp('jogada n�o permitida...')
end

h = handles;

end

