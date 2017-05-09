function [s,vector] = change_to_oposite (i, vector, data)
  vector(i) *= -1;
  s = score(vector, data);
endfunction
