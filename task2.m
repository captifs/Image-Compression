function task2()
for imaginea = 1:2

figure(imaginea);

% 1

link = ['./in/images/image' num2str( imaginea ) '.gif'];

img = double(imread(link));


[m, n] = size(img);
[U S V] = svd(img);


subplot(2,2,1);
plot(diag(S))
title('Toate val. singulare in ordine desc');

% 2

k = [1:19 20:20:99 100:30:min(m,n)];

info = zeros(0);

numitor = 0;

for i = 1:min(m,n);
    numitor += S(i,i);
end

for p = 1:length(k)
    
    numarator = 0;

    for i = 1:k(p)
     numarator += S(i,i);
    end

    info = [info numarator/numitor];
end

subplot(2,2,2);
plot(k, info);
title('Informatia data de valorile singulare');

% 3

lung = length(k);
err = zeros(1,lung);
A = img(:,:,1);
for p = 1:lung
    A_k = task1(link, k(p));
    total = 0;
    for i = 1:m
        for j = 1:n
            w = A(i,j);
           w = w - A_k(i,j);
            total = total + w * w;
        end
    end
    
    err(p) = total / (m*n);
    
end

subplot(2,2,3);
plot(k, err);
title('Eroarea aproximarii');

% 4

rc = (k*m + k*n + k) / (m*n);

subplot(2,2,4);
plot(k, rc);
title('Rata de compresie a datelor');
endfor
endfunction