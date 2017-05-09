function [retval, vector] = improve2 (data)
vector = [];
len = length(data);
vector = randi(2,1,len);
vector(vector==2)=-1;
Q = score(vector, data)
impr = 0;
i = 0;
poc = 0;

while (impr < len) &&  (poc < 100)
  poc += 1;
  i += 1;
  if i > len 
    i -= len;
  endif
  [q,v] = max_vector(i, vector, data);
  if (q > Q)
    Q = q;
    vector = v;
    impr = 0;
  else 
    impr += 1;
  endif
endwhile

retval = score(vector,data);
vector
poc
endfunction
