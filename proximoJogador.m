function [ jogadorAtual ] = proximoJogador( jogador )

jogadorAtual = jogador + 1;

if jogadorAtual == 3
    jogadorAtual = 1;
end

end

