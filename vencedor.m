function [ jogador ] = vencedor( posicoes )

jogador = 0;

%horizontais
if ((p(1, 1) ~= 0) && p(1, 1) == p(1, 2) &&  p(1, 1) == p(1, 3))
    jogador = p(1, 1);
end
if ((p(2, 1) ~= 0) && p(2, 1) == p(2, 2) &&  p(2, 1) == p(2, 3)) 
    jogador = p(1, 1);
end
if ((p(3, 1) ~= 0) && p(3, 1) == p(3, 2) &&  p(3, 1) == p(3, 3)) 
    jogador = p(1, 1);
end

%verticais
if ((p(1, 1) ~= 0) && p(1, 1) == p(2, 1) &&  p(1, 1) == p(3, 1)) 
    jogador = p(1, 1);
end
if ((p(1, 2) ~= 0) && p(1, 2) == p(2, 2) &&  p(1, 2) == p(3, 2)) 
    jogador = p(1, 1);
end
if ((p(1, 3) ~= 0) && p(1, 3) == p(2, 3) &&  p(1, 3) == p(3, 3)) 
    jogador = p(1, 1);
end

%diagonais
if ((p(1, 1) ~= 0) && p(1, 1) == p(2, 2) &&  p(1, 1) == p(3, 3)) 
    jogador = p(1, 1);
end
if ((p(1, 3) ~= 0) && p(1, 3) == p(2, 2) &&  p(1, 3) == p(3, 1)) 
    jogador = p(1, 1);
end


end

