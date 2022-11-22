Program 06



Aim:-To solve the given system of equations using Gauss Seidel Method.

Theory:-
In numerical linear algebra, the Gauss–Seidel method, also known as the Liebmann method or the method of successive displacement, is an iterative method used to solve a system of linear equations.
The system of equations used here are – 
20X1+X2-2X3=17 
3X1+20X2-1X3=-18 
2X1+-3X220X3=25


// Code
//Gauss Seidel Method

clc;
clear;
A=[20 1 -2;3 20 -1;2 -3 20];
B=[17;-18;25];
X=[0;0;0]
n=3;
for i=1:n
 x(i,1)=0;
end
disp(" x1 x2 x3")
for i=1:5
 tol=2;
 while tol>=1e-10;
 x1=x
 for i=1:n
 p=0
 for j=1:n
 if i~=j then
 p=p+(A(i,j).*x(j));
 end
 end
 x(i)=(B(i)-p)./A(i,i);
 end
 tol=abs((x-x1)/x);
 disp(x');
 end
end



 
