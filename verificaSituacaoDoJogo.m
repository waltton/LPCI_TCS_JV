function [ ] = verificaSituacaoDoJogo( handles )

handles.vencedor = vencedor(handles.posicoes);

if vencedor ~= 0 
    handles.jogoAtivo = 0;
    fprintf('O vencedor � : %d', vencedor);
end

end

