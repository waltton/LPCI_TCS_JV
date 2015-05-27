function [ Eh ] = jogadaEhPermitida( handles, linha, coluna )

Eh =  (handles.jogoAtivo == 1) && (handles.posicoes(linha, coluna) == 0);

end

