function [ jogoAtivo ] = verificaSituacaoDoJogo( handles )

jogoAtivo = handles.jogoAtivo;

v = vencedor(handles.posicoes);

if v ~= 0 
    jogoAtivo = 0;
    set(handles.text2, 'String', sprintf('O vencedor � o jogador %d', v));
else
    if deuVelha(handles.posicoes, proximoJogador(handles.jogadorAtual))
        jogoAtivo = 0;
        set(handles.text2, 'String','Deu velha...');
    end
end

end

