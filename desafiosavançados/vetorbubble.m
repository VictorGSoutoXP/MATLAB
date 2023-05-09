// Implementar o algoritmo de ordenação de vetor bubble sort:

v = [5, 2, 9, 1, 5, 6];
n = length(v);
for i = 1:n
    for j = 1:n-i
        if v(j) > v(j+1)
            temp = v(j);
            v(j) = v(j+1);
            v(j+1) = temp;
        end
    end
end
