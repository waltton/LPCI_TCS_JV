function [ h ] = executarJogada( handles, linha, coluna )

if jogadaEhPermitida(handles, linha, coluna)
    handles.posicoes(linha, coluna) = handles.jogadorAtual;
    atualizarGUI(handles);
else
    disp('jogada não permitida...')
end

h = handles;

end

