%###############################################################################
%
% Funktion zum universalen Bewegen des Roboters
% Eingabe: x,y,z Koordinaten eines Punktes, Winkel der Hand zum Boden
% Koordinaten werden in Winkel des Roboterarms übersetzt, um gezielt Punkte anzusteuern
% Der Winkel kann verwendet werden, um die Hand je nach Aufgabe verschieden auszurichten
%
% PST Gruppenübung - Paul Böhm, Bennet Gossen, Lasse Jäger, Anton Wöste
% V1: 19.12.2019
% V2:
%
%###############################################################################

function Rob_move(x,y,z,winkel,rob)
    a1 = 166;     % Länge: shoulder to elbow
    a2 = 218;     % Länge: elbow to wrist
    a3 = 101;     % Länge: wrist to finger
    a4 = 28.9;    % Länge: finger bis grippoint

    rotY = y;     % getrennter y-Wert zum rotieren der Base
    rotX = x;     % getrennter x-Wert zum rotieren der Base

    x = abs(x) - cos(winkel)*(a3+a4);    % neuer x-Wert in Abhängigkeit des Hand-winkels (berücksichtigt die Länge des Armes)
    y = abs(y) - cos(winkel)*(a3+a4);    % neuer y-Wert ""

    z = (sin(winkel)*(a3+a4)) + 12;   % z-Koordinate des grippoints unter Berücksichtigung des Hand-winkels

    hand2groundAng = (winkel + 90);  % Einstellen des Winkels der Hand zum Boden, 90=greifen, 180=scannen

%###############################################################################

  L = sqrt((122-z)^2+(x^2+y^2));   % Abstand Armbeginn Unterarmende (ohne Handgelenk),      zur Berechnung nötig

  phi = acos((a1^2+L^2-a2^2)/(2*a1*L))*180/pi;   % Winkel, bildet ein Dreieck mit elbow und L, zur Berechnung nötig

  delta = acos((122-z)/L)*180/pi;   % Winkel zwischen L und Base,                              zur Berechnung nötig

 %#########################################################################

 baserot = atan(rotY/rotX)*180/pi;  %z=141.9! fürs greifen

 if winkel == 90;     % 90° = Greifbedingung
   wrist = baserot;   % counterrotation der wrist um weiterhin greifen zu können (nur zum greifen benötigt)
 end

 elbow = (pi - acos((a1^2+a2^2-L^2)/(2*a1*a2)))*180/pi; % elbow-Winkel

 shoulder = 180 - delta - phi; % shoulder-winkel

 hand = hand2groundAng - shoulder - elbow; % wrist-winkel, variabel durch F_angle, für verschiedene Greifwinkel (180° zum 90° greifen)

    disp([shoulder, elbow, hand])
    rob.moveAngles([1:5],[baserot,shoulder,elbow,hand,wrist],-1)
end
