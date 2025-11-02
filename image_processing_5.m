A = [12,8,4;
     11,10,1;
     0,7,2];

kernel = [0,-1,0;
         -1,4,-1;
          0,-1,0];

B = imfilter(A,kernel,0);

disp(B);

    