% Wandelt Standart-Koordinaten in Scan-Koordinaten um und f�hrt einen Scan durch.
% Es wird ber�cksichtigen, dass der Scanner um 43.5 mm versetz am Roboter angebracht ist
%
%##########################################################################

% PST Gruppenuebung - Paul B�hm, Bennet Gossen, Lasse J�ger, Anton W�ste
% 17.01.2020
%##########################################################################

function F = Scan_Koo(x,y,z,winkel,rob)

x = x + (44.5*x)/sqrt(x^2+y^2);     % neue x-,y-Koordinaten 
y = y + (y+y*43.5)/sqrt(x^2+y^2);   % erhalten durch Strahlens�tze

Rob_move(x,y,z,winkel,rob);         %bewegt Roboter zu neuen Koordinaten
    pause(2);
 F = farberkennung(rob.getSensorColor); %Farbscann
    disp("beep");
end