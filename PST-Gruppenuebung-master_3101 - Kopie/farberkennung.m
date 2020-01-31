%#################################################################################################################################################
%
% Funktion zur Interpretation eines RGB Farbcodes. Wandelt eine Vektor mit RGB Farbwerten in die entsprechende Farbe um.
%
% PST Gruppenuebung - Paul B�hm, Bennet Gossen, Lasse J�ger, Anton W�ste
% Aufgabe Sensorinterpretation
% 22.11.2019
% V2
%
%#################################################################################################################################################

% Bestimmung groesster, kleinster und mittlerer Farbwert und Positionen im Vektor:

function farbe = farberkennung(farbwerte)

    [Mini] = min(farbwerte);             % Bestimmen des kleinesten Wertes

    [Maxi, IndMax] = max(farbwerte);     % Bestimmen des groe�ten Wertes(Maxi) und seine Stelle(IndMax) 
           
           
    if farbwerte(1) ~= Mini && farbwerte(1) ~= Maxi      % Bestimmung des mittleren Wertes im Vektor
        mittel = farbwerte(1);
    elseif farbwerte(2) ~= Mini && farbwerte(2) ~= Maxi
        mittel = farbwerte(2);
    else
        mittel = farbwerte(3);
    end
    
 %################################################################################################################################################

 % Bestimmen der Differenzen zwischen den Farbwerten zur Einteilung in eventuelle Sonderfaelle:

    differenzGK = Maxi - Mini;           % Differenz groe�ter / kleinster Wert
    differenzMK = Maxi - mittel;         % Differenz groe�ter / mittlerer Wert

 %################################################################################################################################################

 % Einteilung in die vier Kategorien entsprechend der Farbwerte

    if differenzGK <= 25                           % Pruefung auf Sonderfall Schwarz (differenz aller Zahlen <25)
        farbe = 0;
    elseif differenzMK < 31 && differenzMK > 25    % Pruefung auf Sonderfall Blau wenn: beide hohen Werte nah (diff<31) aneinander liegen
        farbe = 3;
    else
        switch IndMax
            case 1
                farbe = 1;     % Entscheidung: Rot, entsprechend dominanter Rot-Stelle
            case 2
                farbe = 2;   % Entscheidung: Gruen, entsprechend dominater Gruen-Stelle
            case 3
                farbe = 3;    % Entscheidung: Blau, entsprechend dominater Blau-Stelle
        end
    end
end