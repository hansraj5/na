Program 08
               

Paper: Numerical analysis 


Aim:- To write the scilab code to fit the polynomial using Newton forward difference interpolation for the given set of data. 
(1891,41) (1901,66) (1911,81) (1921,93) (1931,101)
Theory and formula used:-
•	Newton's forward difference interpolation is a polynomial interpolation which depends on the initial value and degrees of Newton's forward operator. The degree of polynomial fitted is one less than the number of data points. This type of interpolation is only used for equally spaced data points.
 
where
 
// Code:
//newton forward difference interpolation

clc; 
clear;
clf; 
//plot data
x=[1891; 1901 ;1911 ;1921; 1931]
y=[46;66;81;93;101]
plot(x,y,"ro")
n=length(x)

for j=2:n  
for i=1:n-j+1 y(i,j)=y(i+1,j-1)-y(i,j-1)
end
end
disp([x,y])

k =0
for b =1892:5:1940
k = k+1
h=x(2)-x(1)
p=(b-x(1))/h    
 c=y(1)
 s=1
for j=1:n-1
s=s*(p-(j-1))
c = c +(s*y(i,j+1))/factorial(j)end
A(k)= b     
B(k)= c 
end
plot(A,B)
xlabel("X axis") 
ylabel("Y axis")
xtitle("Newton Forward Difference Interpolation")

output
 
 
Graph 
 
