function [ jogoAtivo ] = verificaSituacaoDoJogo( handles )

jogoAtivo = handles.jogoAtivo;

v = vencedor(handles.posicoes);

if v ~= 0 
    jogoAtivo = 0;
    fprintf('O vencedor � : %d', v);
else
    if deuVelha(handles.posicoes, proximoJogador(handles.jogadorAtual))
        jogoAtivo = 0;
        fprintf('velha');
    end
end

end

