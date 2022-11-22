Program 13
Gauss Jordon method


Aim:- solve the given system of equation by gauss Jordon method.
x+y+z=6 
x-y+2z=5 
3x+y-z=2 
Theory 
The Gauss Jordan Elimination, or Gaussian Elimination, is an algorithm to solve a system of linear equations by representing it as an augmented matrix, reducing it using row operations, and expressing the system in reduced row-echelon form to find the values of the variables.
reduced row echelon form:
1.	Rows with zero entries (all elements of that row are 0s) are at the matrix’s bottom.
2.	The leading entry (the first non-zero entry in a row) of each non-zero row is to the right of the row’s leading entry directly above it.
3.	The leading entry in any non-zero row is 1.
4.	All entries in the column containing the leading entry (1) are zeroes.

Code
//gauss jordon method

clc;
clear;
A=[1 1 1;1 -1 2 ;3 1 -1]
B=[6;5;2]
n=3;
c=[A B]
for i=1:n;
for j=1:n;
if i~=j
for k=i+1:n+1
c(j,k)=c(j,k)-(c(i,k)*c(j,i)/c(i,i))
end
c(j,i)=0
end
end
disp(c)
end
sol(n)=c(n,n+1)/c(n,n);
for i=n-1:-1:1;
p=0;
for j=i+1:n; 
p=p+c(i,j)*sol(j);
end
sol(i)=(c(i,n+1)-p)/c(i,i)
end
disp(sol)

// output



