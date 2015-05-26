function [ Eh ] = jogadaEhPermitida( handles, linha, coluna )

Eh = (handles.posicoes(linha, coluna) == 0);

end

