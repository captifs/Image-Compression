
function task5()

for imaginea = 1:2

figure(imaginea);

% 1

link = ['./in/images/image' num2str( imaginea ) '.gif'];
A = double(imread(link));
[m, n] = size(A);
[Ak, S] = task3(link,  min(m, n));

subplot(2,2,1);
plot(diag(S))
title('Toate val. singulare in ordine desc');

% 2
k = [1:19 20:20:99 100:30:min(m,n)];
f = zeros(0);

numitor = 0;

for i = 1:min(m,n);
    numitor += S(i,i);
end

for p = 1:length(k)
    
    numarator = 0;

    for i = 1:k(p)
     numarator += S(i,i);
    end

    f = [f numarator/numitor];
end

subplot(2,2,2);
plot(k, f);
title('Informatia data de valorile singulare');

% 3
l_k = length(k);
err = zeros(l_k);
for p = 1:l_k
       [A_k S] = task3(link, k(p));
    for i = 1:m
        for j = 1:n
            err(p) += ( A(i,j) - A_k(i,j) )^2;
        end
    end
        err(p) = err(p) / (m*n);
 end

subplot(2,2,3);
plot(k, err);
title('Eroarea aproximarii');

% 4
rc = (2*k + 1) / n;

subplot(2,2,4);
plot(k, rc);
title('Rata de compresie a datelor');
end

end