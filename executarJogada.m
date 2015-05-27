function [ h ] = executarJogada( handles, linha, coluna )
    
if jogadaEhPermitida(handles, linha, coluna)
    handles.posicoes(linha, coluna) = handles.jogadorAtual;
    handles.jogoAtivo = verificaSituacaoDoJogo(handles);
    atualizarGUI(handles);
    handles.jogadorAtual = proximoJogador(handles.jogadorAtual);
    if handles.jogoAtivo
        set(handles.text2, 'String', sprintf('Jogador atual : jogador %d', handles.jogadorAtual));
    end
else
    set(handles.text2, 'String', 'Jogada não permitida!');
    t = timer('TimerFcn',@(x,y)set(handles.text2, 'String', sprintf('Jogador atual : jogador %d', handles.jogadorAtual)),'StartDelay',3);
    start(t);
end

h = handles;

end

