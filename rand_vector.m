function [best] = rand_vector (data, X)
best = -10000;
vector = [];
len = length(data);

for i = 1 : X
  vector = randi(2,1,len);
  vector(vector==2)=-1;
  q = score(vector, data);
  if (q > best)
    best = q;
  endif
endfor
best
endfunction
