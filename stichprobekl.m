

A={};
for t = 1:10000
  [colorOut, colorName] = textColorOut('blue');
    
    A{t,1}=colorOut(1); %farbvektor1
    A{t,2}=colorOut(2); %farbvektor2
    A{t,3}=colorOut(3); % farbvektor3
    % A{t,4}=colorName; %name
    
    groesste = A{t,1};
    kleinste = A{t,1};
    
 
    if groesste < A{t,2}
        groesste = A{t,2};
    end
    
    if groesste < A{t,3}
        groesste = A{t,3}; %---------------
    end
    
     if kleinste > A{t,2}
        kleinste = A{t,2};
    end
    
    if kleinste > A{t,3}
        kleinste = A{t,3}; %-----------------
    end
    
    
    if A{t,1} ~= kleinste && A{t,1} ~= groesste 
        mittel = A{t,1};
    elseif A{t,2} ~= kleinste && A{t,2} ~= groesste
    mittel = A{t,2};
    else
        mittel = A{t,3};
    end
    
    
    A{t,5} = groesste; %größte zahl im vektor
    A{t,7} = kleinste; %kleinste zahl im vektor
    A{t,6} = mittel; %mittel   
    A{t,8} = groesste-kleinste; %differenz
    A{t,10} = mittel-kleinste; 
    A{t,11} = groesste-mittel;
end
xyz = A{1,7};

for t=2:10000
        
        if xyz > A{t,7}
       
            xyz = A{t,7}; %größte differenz der stichprobe
        end
      
end
    disp(xyz);
    
    abc = A{1,11};
    
    for t=2:10000
        
        if abc > A{t,11}
       
            abc = A{t,11}; 
        end
      
end
    disp(abc);

    
