%###########################################################################################
%
% PST Gruppenuebung
% Aufgabe Sensorinterpretation
% 22.11.2019
%
% Interpretieren der Farbcodes, die der Sensor ausgiebt in tatsaechliche Farben
%
%###########################################################################################

%Bestimmung groesster, kleinster und mittlerer Farbwert und Positionen im Vektor:

function farbe = farberkennung(farbwerte)

    groesste = farbwerte(1);
    kleinste = farbwerte(1);

    if farbwerte(2) < kleinste      % Bestimmen des kleinesten Wertes durch vergleichen
        kleinste = farbwerte(2);
    end

    if farbwerte(3) < kleinste 
        kleinste = farbwerte(3);
    end

    stelledom = 1;                  % Position der groeßten Stelle

    if farbwerte(2) > groesste      % Bestimmen des groeßten Wertes und seine Position im Vektor
        groesste = farbwerte(2);
        stelledom = 2;
    end

    if farbwerte(3) > groesste 
        groesste = farbwerte(3);
        stelledom = 3;              % Position der groeßten stelle
    end

    if farbwerte(1) ~= kleinste && farbwerte(1) ~= groesste      % Bestimmung des mittleren Wertes im Vektor
        mittel = farbwerte(1);
    elseif farbwerte(2) ~= kleinste && farbwerte(2) ~= groesste
        mittel = farbwerte(2);
    else
        mittel = farbwerte(3);
    end
    
 %##########################################################################################

 % Bestimmen der Differenzen zwischen den Farbwerten zur Einteilung in eventuelle Sonderfaelle:

    differenzGK = groesste - kleinste;             % Differenz groeßter / kleinster Wert
    differenzMK = groesste - mittel;               % Differenz groeßter / mittlerer Wert
    %differenzmk = mittel-kleinste;                %(differenz mittel kleinste) >>unnötig<<

 %#########################################################################################

 % Einteilung in die vier Kategorien entsprechend der Farbwerte


    if differenzGK <= 25                           % Pruefung auf Sonderfall Schwarz (differenz aller Zahlen <25)
        %disp('Black');  
        farbe = 'black';
    elseif differenzMK < 31 && differenzMK > 25    % Pruefung auf Sonderfall Blau wenn: beide hohen Werte nah (diff<31) aneinander liegen
        % disp('blue'); 
        farbe = 'blue';
    elseif stelledom == 1                          % Entscheidung: Rot, entsprechend dominanter Rot-Stelle
        % disp('Red');  
        farbe = 'red';
    elseif stelledom == 2                          % Entscheidung: Gruen, entsprechend dominater Gruen-Stelle
        %disp('Green');
        farbe = 'green';
    elseif stelledom == 3                          % Entscheidung: Blau, entsprechend dominater Blau-Stelle
        %disp('Blue');
        farbe = 'blue';
    end
end