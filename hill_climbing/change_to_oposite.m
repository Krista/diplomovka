function [s,vector] = change_to_oposite (i, vector, data, sco)
  old_v = 
  vector(i) *= -1;
  s = score(vector, data);
endfunction
