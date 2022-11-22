Program 05
Gauss elimination method



Aim:  Theory: 
As the name suggest the unknown variables are determined by elimination process.
Here, in this method, we reduce the square matrix into upper triangular matrix by matrix manipulation.
In the case of Gaussian elimination, the algorithm requires that pivot elements not be zero. Interchanging rows or columns in the case of a zero pivot element is necessary 
Pivoting:  The partial pivoting technique is used to avoid roundoff errors that could be caused when dividing every entry of a row by a pivot value that is relatively small in comparison to its remaining row entries. 
Equation
Without Pivoting    x+y+z=6 ; x-y+2z=5 ; 3x+y-z=2 
With Pivoting 
5x1 + 3x2 - 1x3 = 11; 2x1 + 4x3 +3x4 = 1; -3x1 + 3x2 -3x3 + 5x4 = -2; 6x2 – x3 + 3x4 = -9

// Code 

//gauss elimination
clc;
clear;
A = [1 1 1 ; 1 -1 2 ; 3 1 -1]
B = [6;5;2]
n=3;
C=[A B]
for i=1:n-1;
for j=i+1:n;
for k= i+1:n+1
C(j,k)=C(j,k)-C(i,k)*C(j,i)/C(i,i)
end
end
end
sol(n)=C(n,n+1)/C(n,n);
for i=n-1:-1:1;
p=0;
for j=i+1:n;
p=p+C(i,j)*sol(j);
end
sol(i)=(C(i,n+1)-p)/C(i,i)
end

output 

--> sol
sol  = 

1.
2.
3.

// Code

// gauss elimination with pivoting
clc;
clear;
A=[5 3 -1 0;2 0 4 1;-3 3 -3 5 ;0 6 -2 3]
B=[11;1;-2;9]
n=4;
c=[A B]
for i=1:n-1
r=i
cmax =abs(c(i,i))
for j=i+1:n
if abs(c(i,j))> cmax then
r=j
cmax = c(i,j)
end
end
q = c(r,:)
c(r,:)=c(i,:)
c(i,:)=q
end
for i=1:n-1;
for j=i+1:n;
for k=i+1:n+1
c(j,k)=c(j,k)-(c(i,k)*c(j,i)/c(i,i))
end
end
end
sol(n)=c(n,n+1)/c(n,n);
for i=n-1:-1:1;
p=0;
for j=i+1:n;
p=p+c(i,j)*sol(j);
end
sol(i)=(c(i,n+1)-p)/c(i,i)
end

