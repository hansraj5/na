
                Program 07
                Numerical analysis 


Aim: To determine all the approximate values of the function y(x)using the given databy Lagrange polynomial interpolation.
Theory:
Lagrange polynomial interpolation :
The Lagrange interpolation formula is a way to find a polynomial  which takes on certain values at arbitrary points.
Lagrange Interpolation formula:


Here, We have used the given data: 
(0.1,1.005)(0.2,1.020)(0.3,1.045) and (0.4,1.081)



// INPUT
// (Codes)

//Lagrange polynomial interpolation

clc;
clear;
clf;
X=[0.10.20.30.4]
Y=[1.0051.021.0451.081]
n=length(X);
k=0;
plot(X,Y,'bo')
forxnot=min(X)+0.01:0.01:max(X)-0.01
k=k+1
s=0;
fori=1:n
p=1
forj=1:n
ifj~=ithen
p=p*(xnot-X(j))./(X(i)-X(j))
end
end
s=s+p*Y(i);
end
PP(k)=xnot;
QQ(k)=s;
end
plot(PP,QQ);

// Graph (Output)



