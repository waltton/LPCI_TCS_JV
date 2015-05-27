function [ vencedores ] = possiveisVencedores( posicoes, jogadorAtual, paraNoPrimeiro )

vencedorAtual = vencedor(posicoes);

vencedores = [];

if vencedorAtual ~= 0
    vencedores = vencedorAtual;
else
    sp = size(posicoes);
    for linha = 1:sp(1)
        for coluna = 1:sp(2)
            if ((posicoes(linha, coluna) == 0) && (isempty(vencedores) || (~paraNoPrimeiro)))
                np = posicoes;
                np(linha, coluna) = jogadorAtual;
                vencedores = [vencedores, possiveisVencedores( np, proximoJogador(jogadorAtual), paraNoPrimeiro)];
            end
        end
    end

end

