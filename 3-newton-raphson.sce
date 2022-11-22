Program 03
Newton raphson method



Aim: To determine the roots of equation x3 – 2x – 5 using Newton Raphson Method taking initial guess x0 = 2. 
Theory:
In this method we start with one initial guess x0 and then we determine the value of function at x0 i.e f(x0) . 
Then using this we draw the tangent ,the point where it cuts the X axis is the next approximation x1 . 
                    X1 = x0 - ( f(x0 )/f’(x0) ) 
The iteration will continue until the given tolerance is achieved.

// Code

clc;
clear;
clf;
function y=f(x)
 y = x.^3-2*x-5
endfunction
x0=2;
h=1e-4
tol=1e-4;
i=1;
mprintf("n x0\t\t f(x0)\t x1\t ");
while(abs(f(x0))>tol)
g=(f(x0+h)-f(x0))/h
x1 = x0 - f(x0)/g
x0 = x1
mprintf("\n%i %f %f %f", i,x0,x1,f(x0));
i=i+1
end
x0=1:0.4:4
plot2d(x0,f(x0))
xlabel("x axis");
ylabel("y axis");
xtitle("Newton Raphson Method");
xgrid;

// output
// n     x0		 f(x0)	 x1	 
// 1 2.099994 2.099994 0.060933
// 2 2.094568 2.094568 0.000189
// 3 2.094551 2.094551 0.000000






 
 

