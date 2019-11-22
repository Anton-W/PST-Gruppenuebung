function farbe = farberkennung(farbwerte)

groesste = farbwerte(1);
kleinste = farbwerte(1);

if farbwerte(2) < kleinste
    kleinste = farbwerte(2);
end

if farbwerte(3) < kleinste 
    kleinste = farbwerte(3);
end

stelledom = 1;

if farbwerte(2) > groesste
    groesste = farbwerte(2);
    stelledom = 2; %position der größten stelle
end

if farbwerte(3) > groesste 
    groesste = farbwerte(3);
    stelledom = 3; %position der größten stelle
end

 if farbwerte(1) ~= kleinste && farbwerte(1) ~= groesste 
        mittel = farbwerte(1);
    elseif farbwerte(2) ~= kleinste && farbwerte(2) ~= groesste
    mittel = farbwerte(2);
    else
        mittel = farbwerte(3);
 end
    
%bestimmung groesster wert kleinster wert mittlerer wert
%----------------------------------------

differenzgk = groesste-kleinste; %differenz groesste kleinste
%differenzmk = mittel-kleinste;  %differenz mittel kleinste
var = groesste - mittel;  %differenz groesste mittel


if differenzgk <= 25 
    %disp('Black'); %pruefung auf schwarz 
    farbe = 'black';
elseif var < 31 && var > 25
   % disp('blue'); %SonderFall Blau 2 werte nahe beieinander 3. weit weg
   farbe = 'blue';
elseif stelledom == 1 
   % disp('Red');  
    farbe = 'red';
elseif stelledom == 2 
    %disp('Green');
    farbe = 'green';
elseif stelledom == 3
    %disp('Blue');
    farbe = 'blue';
end

end