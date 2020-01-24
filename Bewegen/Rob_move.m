%#######################################################################################################################
%
% Funktion zum universalen Bewegen des Roboters
% Eingabe: x,y,z-koordinaten eines Punktes, Winkel der Hand zum Boden
% Koordinaten werden in Winkel des Roboterarms �bersetzt, um gezielt Punkte anzusteuern
% Der Winkel kann verwendet werden, um die Hand je nach Aufgabe verschieden auszurichten
%
% PST Gruppen�bung - Paul B�hm, Bennet Gossen, Lasse J�ger, Anton W�ste
% V2: 22.12.2019
%
%#######################################################################################################################

function Rob_move(x, y, z, winkel, rob)

  % festlegen und bestimmen der parameter:

    a1 = 166;     % L�nge: shoulder to elbow
    a2 = 218;     % L�nge: elbow to wrist
    %a3 = 101;     % L�nge: wrist to finger
    %a4 = 28.9;    % L�nge: finger bis grippoint

    rotX = x;     % getrennter x-Wert zum rotieren der Base
    rotY = y;     % getrennter y-Wert zum rotieren der Base

    x = x - ((129.9 * x * cosd(winkel))/sqrt(x^2 + y^2));   % neue x- und y-Werte in Abh�ngigkeit von Hand-winkel
    y = abs(y) - ((129.9 * abs(y) * cosd(winkel))/sqrt(x^2 + y^2));   % L�nge des Armes wird ber�cksichtigt

    z = (sind(winkel) * 129.9) + z;   % z-Koordinate des grippoints unter Ber�cksichtigung des Hand-winkels

    hand2groundAng = (winkel + 90);  % Einstellen des Winkels der Hand zum Boden, 90=greifen, 0=scannen

 %######################################################################################################################

  % bestimmen von l�ngen und Winkeln, die zur Berechnung der Gelenk-winkel n�tig sind:

    L = sqrt((122 - z)^2 + ( x^2 + y^2));   % Abstand Armbeginn Unterarmende (ohne Handgelenk)

    phi = acosd((a1^2 + L^2 - a2^2) / (2 * a1 * L));   % Winkel, bildet ein Dreieck mit elbow und L

    delta = acosd((122 - z) / L);   % Winkel zwischen L und Base

 %######################################################################################################################

   % Berechnung der Gelenk-Winkel f�r den Roboter:

    baserot = atand(rotY / rotX);  % Drehung der Basis, abh�ngig von den urspr�nglichen x,y Koordinaten

    if winkel == 90     % 90� = Greifbedingung
      wrist = baserot;   % counterrotation der wrist um weiterhin greifen zu k�nnen (nur zum greifen ben�tigt)
    else
       wrist = 0;
    end

    elbow = (180 - acosd((a1^2 + a2^2 - L^2) / (2 * a1 * a2))); % elbow-Winkel

    shoulder = 180 - delta - phi; % shoulder-winkel

    hand = hand2groundAng - shoulder - elbow; % hand-winkel, variabel durch hand2groundAng

 %######################################################################################################################

  % Ausgabe & Movement-Command:

    %disp([baserot, shoulder, elbow, hand, wrist])

    rob.moveAngles([1 : 5], [baserot, shoulder, elbow, hand, wrist], -1)

end