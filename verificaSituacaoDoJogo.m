function [ ] = verificaSituacaoDoJogo( handles )

handles.vencedor = vencedor(handles.posicoes);

if vencedor ~= 0 
    handles.jogoAtivo = 0;
    fprintf('O vencedor é : %d', vencedor);
end

end

