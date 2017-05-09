function [s, vector] = swap (i1, i2, vector, data)
  vector(i1) *= -1;
  vector(i2) *= -1;
  s = score(vector, data);
endfunction
