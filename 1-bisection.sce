Program 01
Bisection method


Aim: To determine the approximate root of the given equation using bisection method. 
Theory:
Bisection method : If a Function f(x) is continuous between x=a and x=b and f(a) and f(b) are of opposite sign then there exist at least one root between x=a and x=b. Then the next approximation of the root will be: x’= a+b
equation: y= x^3-x-1

// code

13678
clc;
clear;
clf;
function f=func(x)
f= x^3-x-1
endfunction
a=1;
b=2;
tol= 0.5e-5;
n= 100;
i=1;
mprintf("i\t a\t b\t r\t f(a)\t f(b)\t f(r)\t");
while (i<=n)
r=(a+b)/2;
if (func(r)==0 | (b-a)/2 < tol) then
break
end
if (func(a)*func(r)>0) then
a=(a+b)/2
else
b= (a+b)/2
end
mprintf("\n\n%i %f %f %f %f %f %f",i,a,b,r,func(a),func(b),func(r));
i=i+1
end
xgrid;
x=1:0.4:4
plot2d(x,func(x))






// output
// i	 a	       b	        r	        f(a)	         f(b)	           f(r)	

// 1 1.000000 1.500000 1.500000 -1.000000 0.875000 0.875000
// 2 1.250000 1.500000 1.250000 -0.296875 0.875000 -0.296875
// 3 1.250000 1.375000 1.375000 -0.296875 0.224609 0.224609
// 4 1.312500 1.375000 1.312500 -0.051514 0.224609 -0.051514
// 5 1.312500 1.343750 1.343750 -0.051514 0.082611 0.082611
// 6 1.312500 1.328125 1.328125 -0.051514 0.014576 0.014576
// 7 1.320313 1.328125 1.320313 -0.018711 0.014576 -0.018711
// 8 1.324219 1.328125 1.324219 -0.002128 0.014576 -0.002128

// 9 1.324219 1.326172 1.326172 -0.002128 0.006209 0.006209
// 10 1.324219 1.325195 1.325195 -0.002128 0.002037 0.002037
// 11 1.324707 1.325195 1.324707 -0.000047 0.002037 -0.000047
// 12 1.324707 1.324951 1.324951 -0.000047 0.000995 0.000995
// 13 1.324707 1.324829 1.324829 -0.000047 0.000474 0.000474
// 14 1.324707 1.324768 1.324768 -0.000047 0.000214 0.000214
// 15 1.324707 1.324738 1.324738 -0.000047 0.000084 0.000084
// 16 1.324707 1.324722 1.324722 -0.000047 0.000018 0.000018
// 17 1.324715 1.324722 1.324715 -0.000014 0.000018 -0.000014









// Graph 
// Plot of bisection method (x axix- x  y axis – y=f(x))

