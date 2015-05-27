function [ h ] = executarJogada( handles, linha, coluna )

if jogadaEhPermitida(handles, linha, coluna)
    handles.posicoes(linha, coluna) = handles.jogadorAtual;
    handles.jogoAtivo = verificaSituacaoDoJogo(handles);
    atualizarGUI(handles);
    handles.jogadorAtual = proximoJogador(handles.jogadorAtual);
else
    disp('jogada não permitida...');
end

h = handles;

end

