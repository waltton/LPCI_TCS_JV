function [ ] = verificaSituacaoDoJogo( posicoes )

p = posicoes;
vencedor = 0;
%horizontais
if ((p(1, 1) ~= 0) && p(1, 1) == p(1, 2) &&  p(1, 1) == p(1, 3))
    vencedor = p(1, 1);
end
if ((p(2, 1) ~= 0) && p(2, 1) == p(2, 2) &&  p(2, 1) == p(2, 3)) 
    vencedor = p(1, 1);
end
if ((p(3, 1) ~= 0) && p(3, 1) == p(3, 2) &&  p(3, 1) == p(3, 3)) 
    vencedor = p(1, 1);
end
%verticais
if ((p(1, 1) ~= 0) && p(1, 1) == p(2, 1) &&  p(1, 1) == p(3, 1)) 
    vencedor = p(1, 1);
end
if ((p(1, 2) ~= 0) && p(1, 2) == p(2, 2) &&  p(1, 2) == p(3, 2)) 
    vencedor = p(1, 1);
end
if ((p(1, 3) ~= 0) && p(1, 3) == p(2, 3) &&  p(1, 3) == p(3, 3)) 
    vencedor = p(1, 1);
end
%diagonais
if ((p(1, 1) ~= 0) && p(1, 1) == p(2, 2) &&  p(1, 1) == p(3, 3)) 
    vencedor = p(1, 1);
end
if ((p(1, 3) ~= 0) && p(1, 3) == p(2, 2) &&  p(1, 3) == p(3, 1)) 
    vencedor = p(1, 1);
end

if vencedor ~= 0 
    fprintf('O vencedor é : %d', vencedor)
end

end

