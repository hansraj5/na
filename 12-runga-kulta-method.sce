Program 12
Runge kutta method


Aim:- To write program to solve differential equations using Runge Kutta Method.
Theory :-
Runge–Kutta method is an effective and widely used method for solving the initial-value problems of differential equations. Runge– Kutta method can be used to construct high order accurate numerical method by functions' self without needing the high order derivatives of functions. 
The Runge-Kutta method attempts to overcome the problem of the Euler's method, as far as the choice of a sufficiently small step size is concerned, to reach a reasonable accuracy in the problem resolution.

2nd Order Runge-Kutta method
y1 = y0 + (½) (k1 + k2)
Here,
k1 = hf(x0, y0)
k2 = hf(x0 + h, y0 + k1)

Runge-Kutta Fourth Order Method Formula
The formula for the fourth-order Runge-Kutta method is given by:
y1 = y0 + (⅙) (k1 + 2k2 + 2k3 + k4)
Here,
k1 = hf(x0, y0)
k2 = hf[x0 + (½)h, y0 + (½)k1]
k3 = hf[x0 + (½)h, y0 + (½)k2]
k4 = hf(x0 + h, y0 + k3)





code
//2nd order runge kutta

clc; 
clear; 
clf
function a=f(x, y, z)
a=z
endfunction
function b=g(x, y, z)
b=-4*z-3*y
endfunction
x(1)=0; 
y(1)=1; 
z(1)=5; 
//u(1)=1;
h=0.01; 
for i=1:300
x(i+1)=x(i)+h 
y(i+1)=y(i)+h 

k1=h.*f(x(i),y(i),z(i))
l1=h.*g(x(i),y(i),z(i))

k2=h.*f(x(i)+h,y(i)+k1,z(i)+l1)
l2=h.*g(x(i)+h,y(i)+k1,z(i)+l1)

y(i+1)=y(i)+0.5*(k1+k2)
z(i+1)=z(i)+0.5*(l1+l2)
u(i+1)=4*exp(-x(i))-3*exp(-3*x(i))
end
plot(x,y,'ro')
plot(x,u,'v-')
legend('solution from runge kutta method' , 'analytical solution')
xlabel("X")
ylabel("Y")

// output


Code
//Runge kutta 4th order

clc; 
clear; 
function a=f(x, y)
a=-y
endfunction
x(1)=0; 
y(1)=1; 
h=0.1; 
for i=1:5
x(i+1)=x(i)+h 
k1=h.*f(x(i),y(i))
k2=h.*f(x(i)+h/2,y(i)+k1/2)
k3=h.*f(x(i)+h/2,y(i)+k2/2) 
k4=h.*f(x(i)+h,y(i)+k3)
y(i+1)=y(i)+(k1+2*k2+2*k3+k4)/6
disp(y(i+1))
end
output 
