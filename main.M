%TEOREMA DE BOLZANO POR MÉTODO DE BISECCIÓN PARA ENCONTRAR UN PORCENTAJE DE ERROR MENOR O IGUAL AL 5%
%*Con un intervalo de 0.5 y rango de [-1.5,1.5]*

%teorema de bolzano
clc;clear

%Modifica la función a tus necesidades
fx=x^4+3*x^3-2;
inicio=input('Dame el inicio de tu rango: ');
intervalo=input('Dame el intervalo de tu rango: ');
fin=input('Dame el fin de tu rango: ');
for x=inicio:intervalo:fin
FX=(x.^4)+3*(x.^3)-2;
fprintf('x=%.2f - FX=%.2f\n',x,FX)

if (FX>=0) && (FXa<0)
fprintf('Encontré los valores xa=%.2f, xb=%.2f\n',xa,x)
fprintf('Los valores de FXa=%.2f y FXb=%.2f\n',FXa,FX)
break;
end

FXa=FX;
xa=x;
xb=x+intervalo;
end

%Aquí se manda a llamar a la función BOLZ que determiné anteriormente
[xa,xb]=BOLZ(-2,.5,2)
%TEOREMA DE BISECCIÓN

%PRIMERA ITERACIÓN
ep=100;
xra=0;
while (ep > 4)
xr0=0;
xr=(xa+xb)/2;
FXa=(xa.^4)+3*(xa.^3)-2;
FXr=(xr.^4)+3*(xr.^3)-2;
if FXa*FXr>0
xa=xr;
else
xb=xr;
end

FXb=(xb.^4)+3*(xb.^3)-2;
ep= abs(((xr-xra)/xr)*100);
xra=xr;
fprintf('El intervalo más pequeño que se encontró fue el de [%f,%f]\nCon valores de FXa=%.2f y FXb=%.2f\nCon un porcentaje de error del %.2f por ciento',xa,xb,FXr,FXb,ep);
end

%%SEGUNDA ITERACIÓN
xr2=(xa+xb)/2;
FXa=(xa.^4)+3*(xa.^3)-2;
FXr2=(xr2.^4)+3*(xr2.^3)-2;
if FXa*FXr2>0
 xa=xr2;
else
xb=xr2;
end

%TERCERA ITERACIÓN
xr3=(xa+xb)/2;
FXa=(xa.^4)+3*(xa.^3)-2;
FXr3=(xr3.^4)+3*(xr3.^3)-2;
 
if FXa*FXr3>0
xa=xr3;
else
 xb=xr3;
end

%%CUARTA ITERACIÓN
xr4=(xa+xb)/2;
FXa=(xa.^4)+3*(xa.^3)-2;
FXr4=(xr4.^4)+3*(xr4.^3)-2;
if FXa*FXr4>0
 xa=xr4;
else
 xb=xr4;
end

FXb=(xb.^4)+3*(xb.^3)-2;
pe4= abs((xr4-xr3)*100/xr4);
fprintf('El intervalo más pequeño que se encontró fue el de [%f,%f]\nCon valores de FXa=%.2f y FXb=%.2f\nCon un porcentaje de error del %.2f por ciento',xa,xb,FXr4,FXb,pe4);
