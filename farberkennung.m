%#######################################################################################################################
%
% Funktion zur Interpretation eines RGB Farbcodes. Wandelt eine Vektor mit RGB Farbwerten in die entsprechende Farbe um.
%
% PST Gruppenuebung - Paul Böhm, Bennet Gossen, Lasse Jäger, Anton Wöste
% Aufgabe Sensorinterpretation
% 22.11.2019
% V2
%
%#######################################################################################################################

% Bestimmung groesster, kleinster und mittlerer Farbwert und Positionen im Vektor:

function farbe = farberkennung(farbwerte)

    [Mini] = min(farbwerte);             % Bestimmen des kleinesten Wertes

    [Maxi, IndMax] = max(farbwerte);     % Bestimmen des groeßten Wertes(Maxi) und seine Stelle(IndMax) 
           
           
    if farbwerte(1) ~= Mini && farbwerte(1) ~= Maxi      % Bestimmung des mittleren Wertes im Vektor
        mittel = farbwerte(1);
    elseif farbwerte(2) ~= Mini && farbwerte(2) ~= Maxi
        mittel = farbwerte(2);
    else
        mittel = farbwerte(3);
    end
    
 %######################################################################################################################

 % Bestimmen der Differenzen zwischen den Farbwerten zur Einteilung in eventuelle Sonderfaelle:

    differenzGK = Maxi - Mini;           % Differenz groeßter / kleinster Wert
    differenzMK = Maxi - mittel;         % Differenz groeßter / mittlerer Wert

 %######################################################################################################################

 % Einteilung in die vier Kategorien entsprechend der Farbwerte

    if differenzGK <= 25                           % Pruefung auf Sonderfall Schwarz (differenz aller Zahlen <25)
        farbe = 'black';
    elseif differenzMK < 31 && differenzMK > 25    % Pruefung auf Sonderfall Blau wenn: beide hohen Werte nah (diff<31)
        farbe = 'blue';
    else
        switch IndMax
            case 1
                farbe = 'red';     % Entscheidung: Rot, entsprechend dominanter Rot-Stelle
            case 2
                farbe = 'green';   % Entscheidung: Gruen, entsprechend dominater Gruen-Stelle
            case 3
                farbe = 'blue';    % Entscheidung: Blau, entsprechend dominater Blau-Stelle
        end
    end
end