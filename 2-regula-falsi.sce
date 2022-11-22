Program 02
Regula falsi method 



Aim: To determine the approximate root of the given equation using Regula Falsi method. 
Theory: 
Regula falsi method : In this method, we will connect two points (x0,f(x0)) and (x1,f(x1)) then find the value of x where it cuts x-axis (x2): 
Then the next approximation of the root will be: 
x2= (x0f(x1) – x1f(x0))/f(x1) – f(x0) 
equation: y= x^3-2x-5

//Code

clc;
clear;
clf;
function f=func(x)
f=x^3-2*x-5
endfunction
a=2;
b=3;
tol=0.5e-5;
i=1;
r=(a*func(b)-b*func(a))/(func(b)-func(a))
mprintf("i\t a\t b\t r\t f(r)\t");
while(abs(func(a))>=tol)
r=(a*func(b)-b*func(a))/(func(b)-func(a))
mprintf("\n\n%i %f %f %f %f",i,a,b,r,func(r));
if(func(a)*func(r)>0)then
a=r
else
b=r
end
i=i+1
end
xgrid;
x=1:0.4:4
plot2d(x,func(x))

// Output
// i       a               b                 r               f(r)	
// 1 2.000000 3.000000 2.058824 -0.390800
// 2 2.058824 3.000000 2.081264 -0.147204
// 3 2.081264 3.000000 2.089639 -0.054677
// 4 2.089639 3.000000 2.092740 -0.020203
// 5 2.092740 3.000000 2.093884 -0.007451
// 6 2.093884 3.000000 2.094305 -0.002746
// 7 2.094305 3.000000 2.094461 -0.001012
// 8 2.094461 3.000000 2.094518 -0.000373
// 9 2.094518 3.000000 2.094539 -0.000137
// 10 2.094539 3.000000 2.094547 -0.000051
// 11 2.094547 3.000000 2.094550 -0.000019
// 12 2.094550 3.000000 2.094551 -0.000007
// 13 2.094551 3.000000 2.094551 -0.000003
// Graph
// Plot of regula falsi method (x axix- x  y axis – y=f(x))

