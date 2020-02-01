function []= horarios(hora,minutos)

if hora==7 || hora==8 || hora==9 || hora==16 || hora==17 || hora==18 || hora==19
    
    if hora==9 || hora==19
       if  minutos<=29
           fprintf('No circula\n')
       else
           fprintf('Puede circular\n')
       end
    else
        fprintf('No circula\n')
        
    end
else 
    fprintf('Puede circular\n')
    
end
end

