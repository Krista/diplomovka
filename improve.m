function [retval] = improve (data)
vector = [];
len = length(data);
vector = randi(2,1,len);
vector(vector==2)=-1;
Q = score(vector, data)

for i = 1 : len
    v = vector;
    v(i) *= -1;    
    q = score(v, data);
  if (q > Q)
    vector = v;
  endif
endfor
retval = score(vector,data);
endfunction
