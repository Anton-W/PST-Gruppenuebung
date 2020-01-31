%##########################################################################
%
% Automatisierter Scanablauf für den Farbscanner
% Bei Aufruf wird die Würfel-Matrix einmal vollständig gescannt
% Gibt Übersicht über die bestehenden Würfel-Farben zum Programm Beginn
%
% PST-Gruppenübung
% 17.01.2020
%
%##########################################################################

function FM = M_Scan(rob)   % Scanner-Position = x + 43.5
    Rob_move(250,0,65,0,rob);
        pause(3);
        p = 2;
        z = 65;
        winkel = 0;
    
W31 = Scan_Koo(250,60,z,winkel,rob);
    
W21 = Scan_Koo(310,60,z,winkel,rob);
    
W11 = Scan_Koo(370,60,z,winkel,rob);

W12 = Scan_Koo(370,0,z,winkel,rob);
    
W13 = Scan_Koo(370,-60,z,winkel,rob);
    
W23 = Scan_Koo(310,-60,z,winkel,rob);
    
W33 = Scan_Koo(250,-60,z,winkel,rob);
    
W32 = Scan_Koo(250,0,z,winkel,rob);
 
W22 = Scan_Koo(310,0,z,winkel,rob);
    
FM = [W11,W12,W13;W21,W22,W23;W31,W32,W33];

Rob_move(270,0,60,90,rob);
pause(1);
end