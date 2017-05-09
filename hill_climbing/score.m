function [retval] = score (vector, data)
if (length(vector) != length(data) ) 
  "nesedia tu rozmery!"
endif
retval = 0;
  for i =  1 : length(data)
    for j = 1 : length(data)
      retval += data(i,j) * vector(i) * vector(j);
     endfor
   endfor
endfunction
