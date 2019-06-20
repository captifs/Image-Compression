% Bejenaru Adrian 311 CB 

function [A_k S] = task3(image, k)
  
  %Citirea imaginii 
    A = double(imread(image)); 

    [m n] = size(A); 

    %Calcularea  mediei  fiecare linie a matricii A 
    for i = 1 : m
        miu(i) = (A(i, :) * ones(n,1)) / n;
         A(i, :) = A(i, :) - miu(i);
    endfor

    % Construirea matricii Z
    Z = transpose(A) / sqrt(n - 1);

    % Calcularea  DVS pentru matricea Z
    [U S V] = svd(Z);

   % Calcularea spatiului k-dimensional al componentelor principale
    W = V(:, 1:k);

    %Calculularea proiectiei lui A in spatiul componentelor principale
    Y = W' * A;

    % Aproximarea matricii initiale
A_k = W * Y + transpose(miu);
endfunction