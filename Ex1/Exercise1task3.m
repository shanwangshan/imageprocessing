tic
X=[0 0 0 0 0 0 0 1 1 0;
    1 0 0 1 0 0 1 0 0 1;
    1 0 0 1 0 1 1 0 0 0;
    0 0 1 1 1 0 0 0 0 0;
    0 0 1 1 1 0 0 1 1 1];
imshow(X,'InitialMagnification','fit')
S1=X(1:4,2:5);
S2=X(1:4,6:9);
fprintf('   the non-zero number of S1 is n1=%7.2f\n',Count(S1))
fprintf('   the non-zero number of S2 is n2=%7.2f\n',Count(S2))
fprintf('   the non-zero number of X is n3=%7.2f\n',Count(X))
load S.mat
fprintf('   the non-zero number of S is n4=%7.2f\n',Count(S))

toc