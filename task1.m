function A_k = task1(image, k)

  % citesc imagine  imagine
  A_k = double(imread(image));
  
  [m n] = size(A_k);

  % descompunere matrice pixeli in SVD si  
 % selectare linii&coloane pentru compresie 
  [U, S, V] = svd(A_k);
  
  U = U(:,1:k);
  S = S(1:k,1:k);
  V = V(:,1:k);
  
  A_k = U * S * V';
    
endfunction