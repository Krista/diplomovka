function [retval, vector] = max_vector (i, vector, data)
  max_svap = -100000;
  v_swap = [];
  [s_opo, ve] = change_to_oposite(i, vector, data);
  
  %try to find the best swap
  for x = 1 : length(vector)
    if(vector(i) != vector(x))
      [s,v]  = swap(i,x,vector,data); 
      if (s > max_svap)
        max_svap = s;
        v_swap = v;
      endif
    endif
  endfor
   
  %last check simple change_to_oposite vs iterative swap  
  if s_opo > max_svap
     retval = s_opo;
     vector = ve;
  else 
      retval = max_svap;
      vector = v_swap;
  endif
      
endfunction
