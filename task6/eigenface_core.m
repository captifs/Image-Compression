function [m A eigenfaces pr_img] = eigenface_core(database_path)
  
  T = [];
  for i=1:10

    img = double(rgb2gray(imread(sprintf('./dataset/%d.jpg', i))));

    img = img';
    T = [T img(:)];
  endfor

  m = mean(T,2);

  A = T - m;

  [V D] = eig(A' * A);

  d = diag(D);
  temp = length(d); 
      Vup = [];
      i = 1;
      while i <= temp
    if d(i) > 1
      Vup = [Vup V(:, i)];
    endif
    i++;
  endwhile
  eigenfaces = A * Vup;
  pr_img = eigenfaces' * A;
end