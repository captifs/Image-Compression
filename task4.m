function [A_k, S] = task4(image, k)
  A = double(imread(image));
  [m n] = size(A);
  
  % Ca la cerinta 3 se media fiecarei linii din matrice 
   for i = 1 : m
        miu(i) = (A(i, :) * ones(n,1)) / n;
         A(i, :) = A(i, :) - miu(i);
    endfor
  
 %Calcularea matricii de covarianta Z 
  Z = A * (transpose(A) / (n-1));
  % Calcularea valorilor si vectorilor proprii a matricii
  [V S] = eig(Z);
  
  % Calcularea spatiului k-dimensional al componentelor principale
for i = 1:k 
 W(:,i) = V(:,i);
endfor
% Calcularea proiectiei lui A in spatiul componentelor principale 
  Y = W' * A;
  A_k = W * Y + transpose(miu);
endfunction