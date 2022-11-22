Program 11
Euler’s Method


Aim:-  Solve the following differential equation using Euler’s method– 
1. Dy/dx=-y ; y(0) = 1 
2. D²y/dx²+4dy/dx+3y=0 ; y(0) = 1
Theory :-
Euler method is a first-order numerical procedure for solving ordinary differential Equations (ODEs) with a given initial value. Consider a differential equation
dy/dx = f(x, y) with initial condition y(x0) = y0 
Then successive approximation of this equation can be given by Y(n+1) = y(n) + h * f(x(n), y(n)) 
where h = (x(n) – x(0)) / n     h indicates step size.
// Code
//Euler’s method 

clc; 
clear; 
function a=f(x, y) 
a=-y 
endfunction 
h=0.1; 
x(1)=0; 
y(1)=1; 
for i=1:5 
mprintf(" Solution of ode at x=%f: \n",i*h) 
mprintf(" from eulers method: %f \n",y(i)) 
x(i+1)=x(i)+h 
y(i+1)=y(i)+h*f(x(i),y(i)); 
mprintf(" from ode : %f \n",ode(1,0,x(i),f)); 
mprintf(" from analytical method : %f \n\n",exp(-x(i))); 
end













// Code 2
//Euler’s method 

clc; 
clear; 
clf 
function a=f(x, y, z) 
a=z; 
endfunction 
function b=g(x, y, z) 
b=-4*z-3*y; 
endfunction 
h=0.1; 
x(1)=0; 
y(1)=1; 
z(1)=5; 
u(1)=1 
for i=1:30 
x(i+1)=x(i)+h 
y(i+1)=y(i)+h*f(x(i),y(i),z(i)); 
z(i+1)=z(i)+h*g(x(i),y(i),z(i)); 
u(i+1)=4*exp(-x(i))-3*exp(-3*x(i)) 
end 
plot(x,y,'ro-') 
plot(x,u,'v+-') 
legend('solution from eulers method','analytical solution'); 
xlabel("X");





