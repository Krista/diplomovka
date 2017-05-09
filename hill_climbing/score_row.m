function [retval] = score_row (row, vector, data)
  retval = 0;
  for i=1 : length(vector)
     r= data(row,i) * vector(i) * vector(row);
     retval +=r;
     r2 -= r;
  endfor
endfunction
