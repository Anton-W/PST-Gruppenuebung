%##########################################################################
%
% H�lt die W�rfelkoordinaten die zum tauschen gebraucht werden
% Gibt die Koordinaten von zwei tauschbaren W�rfeln zur�ck
%
% PST Gruppen�bung
% 17.01.2020
%
%##########################################################################

function TK = W_trade(W1,W2)

switch W1
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

switch W2
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

TK = [J,K];

end