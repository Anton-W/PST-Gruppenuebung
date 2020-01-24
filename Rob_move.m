%#######################################################################################################################
%
% Funktion zum universalen Bewegen des Roboters
% Eingabe: x,y,z-koordinaten eines Punktes, Winkel der Hand zum Boden
% Koordinaten werden in Winkel des Roboterarms übersetzt, um gezielt Punkte anzusteuern
% Der Winkel kann verwendet werden, um die Hand je nach Aufgabe verschieden auszurichten
%
% PST Gruppenübung - Paul Böhm, Bennet Gossen, Lasse Jäger, Anton Wöste
% V2: 22.12.2019
%
%#######################################################################################################################

function Rob_move(x, y, z, winkel, rob)

  % festlegen und bestimmen der parameter:

    a1 = 166;     % Länge: shoulder to elbow
    a2 = 218;     % Länge: elbow to wrist
    %a3 = 101;     % Länge: wrist to finger
    %a4 = 28.9;    % Länge: finger bis grippoint

    rotX = x;     % getrennter x-Wert zum rotieren der Base
    rotY = y;     % getrennter y-Wert zum rotieren der Base

    x = x - ((129.9 * x * cosd(winkel))/sqrt(x^2 + y^2));   % neue x- und y-Werte in Abhängigkeit von Hand-winkel
    y = abs(y) - ((129.9 * abs(y) * cosd(winkel))/sqrt(x^2 + y^2));   % Länge des Armes wird berücksichtigt

    z = (sind(winkel) * 129.9) + z;   % z-Koordinate des grippoints unter Berücksichtigung des Hand-winkels

    hand2groundAng = (winkel + 90);  % Einstellen des Winkels der Hand zum Boden, 90=greifen, 0=scannen

 %######################################################################################################################

  % bestimmen von längen und Winkeln, die zur Berechnung der Gelenk-winkel nötig sind:

    L = sqrt((122 - z)^2 + ( x^2 + y^2));   % Abstand Armbeginn Unterarmende (ohne Handgelenk)

    phi = acosd((a1^2 + L^2 - a2^2) / (2 * a1 * L));   % Winkel, bildet ein Dreieck mit elbow und L

    delta = acosd((122 - z) / L);   % Winkel zwischen L und Base

 %######################################################################################################################

   % Berechnung der Gelenk-Winkel für den Roboter:

    baserot = atand(rotY / rotX);  % Drehung der Basis, abhängig von den ursprünglichen x,y Koordinaten

    if winkel == 90     % 90° = Greifbedingung
      wrist = baserot;   % counterrotation der wrist um weiterhin greifen zu können (nur zum greifen benötigt)
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