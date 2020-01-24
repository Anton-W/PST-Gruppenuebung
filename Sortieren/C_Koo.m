%##########################################################################
%
% Hält die Würfelkoordinaten die zum tauschen gebraucht werden
% Gibt die Koordinaten von zwei tauschbaren Würfeln zurück
%
% PST Gruppenübung
% 17.01.2020
%
%##########################################################################

function TK = C_Koo(C1,C2)

switch C1
    case 0
        K = [];
    case 1
        K = [370,60];
    case 2 
        K = [370,0];
    case 3
        K = [370,-60];
    case 4
        K = [310,60];
    case 5
        K = [310,0];
    case 6 
        K = [310,-60];
    case 7
        K = [250,60];
    case 8
        K = [250,0];
    case 9
        K = [250,-60];
end

switch C2
    case 0
        J = [];
    case 1
        J = [370,60];
    case 2 
        J = [370,0];
    case 3
        J = [370,-60];
    case 4
        J = [310,60];
    case 5
        J = [310,0];
    case 6 
        J = [310,-60];
    case 7
        J = [250,60];
    case 8
        J = [250,0];
    case 9
        J = [250,-60];
end

TK = [K,J];

end