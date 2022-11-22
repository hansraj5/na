Program 10
Simpson’s Integration Method



Aim:- To write the scilab code to perform Simpson’s integration for the given function 1/(1+x) in the interval 0 and 1.
Theory and formula used:-
Simpson's rule is used to find the value of a definite integral (that is of the form b∫ₐ f(x) dx) by approximating the area under the graph of the function f(x). Using Simpson's rule, we evaluate the area under a curve is by dividing the total area into parabolas. 
The Simpson’s 1 / 3 Rule for integration
An individual can also get a quicker approximations for definite integrals by dividing a small interval a,b into two parts. This means that after dividing the interval, one would get: 
∫ab f(x) dx = h/3 [(y0 + yn) + 4(y1 + y3 + y5 + …. + yn-1) +     2(y2 + y4 + y6 + ….. + yn-2)]
Where h = (b – a)/2

The Simpson’s 3/8 rule
The Simpson’s 3 / 8 rule is another method that can be used for numerical integration. This numerical method is entirely based on the cubic interpolation instead of the quadratic interpolation. This rule can be represented by the formula that is mentioned below.
∫ab f(x) dx = 3h/8 [(y0 + yn) + 3(y1 + y2 + y4 + y5 + …. + yn-1) + 2(y3 + y6 + y9 + ….. + yn-3)]
Where h = (b – a)/2

// Code 


Simpson’s 1 / 3 Rule for Integration

clc; 
clear; 
function c=f(x)
c=1/(1+x)
endfunction
a=0
b=1
n=100
h=(b-a)/n 
s=0
for i=1:n-1
if modulo(i,2)==0 then
s=s+2*f(a+i*h)
else 
s=s+4*f(a+i*h)
end
end
disp((h/3)*(f(a)+s+f(b)),"From Simson Rule",)

// output


Simpson’s 3/ 8 Rule for Integration

clc; 
clear; 
function c=f(x)
c=1/(1+x)
endfunction
a=0
b=1
n=600
h=(b-a)/n 
s=0
for i=1:n-1
if modulo(i,3)==0 then
s=s+2*f(a+i*h)
else 
s=s+3*f(a+i*h)
end
end
disp(((3*h)/8)*(f(a)+s+f(b)),"From Simson 3/8 Rule",)

// output

