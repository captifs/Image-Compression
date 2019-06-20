function [min_dist output_img_index] = face_recognition(image_path, m, A, eigenfaces, pr_img)

  pic = double(rgb2gray(imread(image_path)));
  pic = pic';
  picm = pic(:);
  picm = picm - m;
  sec_col = pr_img(2,:);
  lth = length(sec_col);
  for i=1:lth
    if norm((eigenfaces)' * picm - pr_img(:, i)) < Inf
      Inf = norm((eigenfaces)' * picm - pr_img(:, i));
      output_img_index = i;
    end
  end
  min_dist = Inf;
end