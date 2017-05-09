function [retval, vector] = improve (data)
vector = [];
len = length(data);
vector = randi(2,1,len);
vector(vector==2)=-1;
Q = score(vector, data)
impr = 0;
i = 0;
poc = 0;

while (impr < len) &&  (poc < 10000)
  poc += 1;
  i += 1;
  if i > len 
    i -= len;
  endif
  i;
  [q,v] = change_to_oposite(i, vector, data);
  if (q > Q)
    Q = q
    poc
    vector = v;
    impr = 0;
  else 
    impr += 1;
  endif
endwhile

retval = score(vector,data);
vector;
poc
impr;
endfunction
