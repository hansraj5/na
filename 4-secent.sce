Program 04
Secant method



Aim: To determine the roots of equation x3 – 2x – 5 using Secant Method taking initial guess x0 = 2. 
Theory:
This method starts with two initial guess x0 and x1 . Using x0 and x1 we find the value of x. 
x= x1-((f(x1)*(x1-x0))/(f(x1)-f(x0))) 
Then we will assign the value of x1 to x0 and x to x1 . 
The iteration will continue until the given tolerance is achieved.

// Code

clc;
clear;
clf;
function y=f(x)
y = x.^3-2*x-5
endfunction
x0=2;
x1=3
tol=1e-4;
i=1;
mprintf("n x0\t\t f(x0)\t x1\t ");
while(abs(f(x1)-f(x0))>tol)
x=x1-((f(x1)*(x1-x0))/(f(x1)-f(x0)))
x0=x1
x1=x
mprintf("\n%i %f %f %f", i,x0,x1,f(x0));
i=i+1
end
x0=1:0.4:4
plot2d(x0,f(x0))
xlabel("x axis");
ylabel("y axis");
xtitle("Secant Method");
xgrid;



// output 
// n      x0		 f(x0)	 x1	 
// 1 3.000000 2.058824 16.000000
// 2 2.058824 2.081264 -0.390800
// 3 2.081264 2.094824 -0.147204
// 4 2.094824 2.094549 0.003044
// 5 2.094549 2.094551 -0.000023
// Graph 

