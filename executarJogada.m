function [ h ] = executarJogada( handles, linha, coluna )

set(handles.text2, 'String', '...');
    
if jogadaEhPermitida(handles, linha, coluna)
    handles.posicoes(linha, coluna) = handles.jogadorAtual;
    handles.jogoAtivo = verificaSituacaoDoJogo(handles);
    atualizarGUI(handles);
    handles.jogadorAtual = proximoJogador(handles.jogadorAtual);
else
    set(handles.text2, 'String', 'Jogada não permitida!');
end

h = handles;

end

