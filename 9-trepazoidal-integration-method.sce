Program 09
Trapezoidal Integration Method


Aim:- To write the scilab code to perform trapezoidal integration for the given function 1/(1+x) in the interval 0 and 1.  

Theory 
We apply the trapezoidal rule formula to solve a definite integral by calculating the area under a curve by dividing the total area into little trapezoids rather than rectangles. This rule is used for approximating the definite integrals where it uses the linear approximations of the functions. The trapezoidal rule takes the average of the left and the right sum.
Let y = f(x) be continuous on [a, b]. We divide the interval [a, b] into n equal subintervals, each of width, h = (b - a)/n,
such that a = x0 < x1 < x2 < ⋯ < xn = b
Area = (h/2) [y0 + 2 (y1 + y2 + y3 + ..... + yn-1) + yn]
where,
•	y0, y1,y2…. are the values of function at x = 1, 2, 3….. respectively.


// Code

clc; 
clear; 
function c=f(x)
c=1/(1+x)
endfunction
a=0
b=1
n=100
h=(b-a)/n 
y=f(a)
z=f(b)
s=0
for i=1:n-1
s=s+f(a+i*h)
end
ans=h/2*[y+(2*s)+z]
disp(ans)

output

