clc
clear all

%% Se ha creado un Calendario del 2020 
%   lunes = 1
%    martes = 2
%    miercoles = 3
%    jueves = 4
%    viernes = 5
%    sabado = 6
%    domingo = 7
aux = 3;
for i=1:31
    enero(i) = aux;
    julio(i) = aux;
    if aux==7
     aux = 0;
    end
    aux = aux +1;
end

aux = 6;
for i=1:29
    febrero(i) = aux;
    if aux==7
     aux = 0;
    end
    aux = aux +1;
end

aux = 7;
for i=1:31
    marzo(i) = aux;
    if aux==7
     aux = 0;
    end
    aux = aux +1;
end

aux = 3;

for i=1:30
    abril(i) = aux;
    if aux==7
     aux = 0;
    end
    aux = aux +1;
end

aux = 5;
for i=1:31
    mayo(i) = aux;
    if aux==7
     aux = 0;
    end
    aux = aux +1;
end

aux = 1;
for i=1:30
    junio(i) = aux;
    if aux==7
     aux = 0;
    end
    aux = aux +1;
end

aux = 6;
for i=1:31
    agosto(i) = aux;
    if aux==7
     aux = 0;
    end
    aux = aux +1;
end

aux = 2;
for i=1:30
    septiembre(i) = aux;
    if aux==7
     aux = 0;
    end
    aux = aux +1;
end

aux = 4;
for i=1:31
    octubre(i) = aux;
    if aux==7
     aux = 0;
    end
    aux = aux +1;
end

aux = 7;
for i=1:30
    noviembre(i) = aux;
    if aux==7
     aux = 0;
    end
    aux = aux +1;
end

aux = 2;
for i=1:31
    diciembre(i) = aux;
    if aux==7
     aux = 0;
    end
    aux = aux +1;
end
time=-1;
placa=-1;
n=1;
f=1;
vacia=0;
%% datos de usuario 
fprintf('           PICO Y PLACA     \n')
fprintf('INTERFAZ PARA VERIFICAR LA CIRCULACION DEL VEHICULO\n')
while placa<0
placa = input('Ingrese los números de las placas de su vehiculo: ');
end

while n==1 || f==1 || vacia==0
fecha = input('Ingrese la fecha (enero dd)(ej. enero   31(UTILICE COMILLAS SIMPLES'')): ');
fecha = split(fecha);
[f, c]=size(fecha);
if f==2
dia = str2num(fecha{2});
[vacia, c]= size(dia);
end
 switch fecha{1}
    case 'enero'
        n=0;
        if f==1 || vacia==0 || dia>31 || dia<=0
          fprintf('Ingrese correctamente la fecha\n')  
        end
    case 'febrero'
        n=0;
        if f==1 || vacia==0 || dia>29 || dia<=0
          fprintf('Ingrese correctamente la fecha\n')  
        end
    case 'marzo'
        if f==1 || vacia==0 || dia>31 || dia<=0
          fprintf('Ingrese correctamente la fecha\n')  
        end
        n=0;
    case 'abril'
        if f==1 || vacia==0 || dia>30 || dia<=0
          fprintf('Ingrese correctamente la fecha\n')  
        end
        n=0;
    case 'mayo'
        if f==1 || vacia==0 || dia>31 || dia<=0
          fprintf('Ingrese correctamente la fecha\n')  
        end
        n=0;
    case 'junio' 
        if f==1 || vacia==0 || dia>30 || dia<=0
          fprintf('Ingrese correctamente la fecha\n')  
        end
        n=0;
    case 'julio'
        if f==1 || vacia==0 || dia>31 || dia<=0
          fprintf('Ingrese correctamente la fecha\n')  
        end
        n=0;
    case 'agosto'
        if f==1 || vacia==0 || dia>31 || dia<=0
          fprintf('Ingrese correctamente la fecha\n')  
        end
        n=0;
    case 'septiembre'
        if f==1 || vacia==0 || dia>30 || dia<=0
          fprintf('Ingrese correctamente la fecha\n')  
        end
        n=0;
    case 'octubre'
        if f==1 || vacia==0 || dia>31 || dia<=0
          fprintf('Ingrese correctamente la fecha\n')  
        end
        n=0;
    case 'noviembre'
        if f==1 || vacia==0 || dia>30 || dia<=0
          fprintf('Ingrese correctamente la fecha\n')  
        end
        n=0;
    case 'diciembre'
        if f==1 || vacia==0 || dia>31 || dia<=0
          fprintf('Ingrese correctamente la fecha\n')  
        end
        n=0;
     otherwise
        fprintf('Ingrese correctamente la fecha\n')
        n=1;
end 
 
end
 minutos=70;
while time<0 || minutos>59
time = input('\nIngrese la hora que circula (hh.mm)(ej. 12.08): ');
hora = floor(time);
minutos = 100*(time-hora);
end
%% algoritmo
digito = mod(placa,10);


% fprintf('el ultimo digito es: %d\n',digito)
% fprintf('hora: : %d\n',hora)
% fprintf('minutos: %d\n',minutos)


switch fecha{1}
    case 'enero'
        dia = enero(dia);
    case 'febrero'
        dia = febrero(dia);
    case 'marzo'
        dia = marzo(dia);
    case 'abril'
        dia = abril(dia);
    case 'mayo'
        dia = mayo(dia);
    case 'junio'
        dia = junio(dia);
    case 'julio'
        dia = julio(dia);
    case 'agosto'
        dia = agosto(dia);
    case 'septiembre'
        dia = septiembre(dia);
    case 'octubre'
        dia = octubre(dia);
    case 'noviembre'
        dia = noviembre(dia);
    case 'diciembre'
        dia = diciembre(dia);
    otherwise
        
end

 
switch dia
    case 1
    if digito==1 || digito==2
    horarios(hora,minutos)
    else
      fprintf('Puede circular\n')
    end
    case 2
    if digito==3 || digito==4
    horarios(hora,minutos)
    else
       fprintf('Puede circular\n')
    end
    case 3
    if digito==5 || digito==6
    horarios(hora,minutos)
    else
        fprintf('Puede circular\n')
    end
    case 4
    if digito==7 || digito==8
    horarios(hora,minutos)
    else
        fprintf('Puede circular\n')
    end
    case 5
    if digito==9 || digito==0
    horarios(hora,minutos)
    else
    fprintf('Puede circular\n')
    end
    case 6
        fprintf('Puede circular')
    case 7
        fprintf('Puede circular')
    
end

