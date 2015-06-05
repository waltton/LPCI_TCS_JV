function [ XO ] = num2XO( num )

if num == 0
    XO = '';
elseif num == 1
    XO = 'X';
elseif num == 2
    XO = 'O';
end

end

