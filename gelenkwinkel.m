%##########################################################################
%
% Funktion zum �bersetzten von Kartesischen Koordinaten in Winkel
%
% PST Gruppen�bung
% V1: 19.12.2019
%
%
%##########################################################################

function gelenkwinkel(x,y,z,winkel,rob)
    a1 = 166;     % L�nge: shoulder to elbow
    a2 = 218;     % L�nge: elbow to wrist
    a3 = 101;     % L�nge: wrist to finger
    a4 = 28.9;    % L�nge: finger bis grippoint
    L = sqrt((122-z)^2+(x^2+y^2));   % Abstand Armbeginn Unterarmende (ohne Handgelenk),      zur Berechnung n�tig
    
 phi = acos((a1^2+L^2-a2^2)/(2*a1*L))*180/pi;   % Winkel, bildet ein Dreieck mit elbow und L, zur Berechnung n�tig
 
 delta = acos((122-z)/L)*180/pi;   % Winkel zwischen L und Base,                              zur Berechnung n�tig
 
 F_angle = 180;  % Variable zum Einstellen des (greif)winkels 180 ? greifen, 90 ? scannen, soll sp�ter "winkel" verwenden k�nnen
 
 
 %#########################################################################
 
 baserot = atan(y/x)*180/pi; %z=141.9! f�rs greifen
    
 wrist = baserot; % counterrotation des gelenks um weiterhin greifen zu k�nnen(nur beim greifen zu verwenden!)
 
 elbow = (pi - acos((a1^2+a2^2-L^2)/(2*a1*a2)))*180/pi; % elbow-Winkel
 
 shoulder = 180 - delta - phi; % shoulder-winkel
 
 hand = F_angle - shoulder - elbow; % wrist-winkel, variabel durch F_angle, f�r verschiedene Greifwinkel (180� zum 90� greifen) 
 
    disp([shoulder, elbow, hand])
    rob.moveAngles([1:5],[baserot,shoulder,elbow,hand,wrist],-1)
end
