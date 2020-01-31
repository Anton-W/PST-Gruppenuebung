% Funktion, die zwei Würfel tauscht
% Input: W1, W2 die getauscht werden sollen
%
%##########################################################################

% PST Gruppenuebung - Paul Böhm, Bennet Gossen, Lasse Jäger, Anton Wöste
% 24.01.2020
%##########################################################################

function C_Trade(C1,C2,rob)
    jj = C_Koo(C1,C2);
    
        x1 = jj(1);
        y1 = jj(2);
        x2 = jj(3);
        y2 = jj(4);
    
    Rob_move(270,0,60,90,rob);
        pause(2);
    Rob_move(x1,y1,60,90,rob);
        pause(1);
    Rob_move(x1,y1,12,90,rob);
        rob.closeHand
    Rob_move(x1,y1,60,90,rob);
        pause(1);
    Rob_move(160,0,60,90,rob);
        pause(1);
    Rob_move(160,0,12,90,rob);
        rob.openHand
    Rob_move(270,0,60,90,rob);
        pause(1)
    Rob_move(x2,y2,60,90,rob);
    Rob_move(x2,y2,12,90,rob);
        rob.closeHand
    Rob_move(x2,y2,60,90,rob);
        pause(1)
    Rob_move(x1,y1,60,90,rob);
    Rob_move(x1,y1,12,90,rob);
        rob.openHand
    Rob_move(x1,y1,60,90,rob);
    Rob_move(160,0,60,90,rob);
        pause(1);
    Rob_move(160,0,12,90,rob);
        rob.closeHand
    Rob_move(160,0,60,90,rob);
    Rob_move(x2,y2,60,90,rob);
        pause(1);
    Rob_move(x2,y2,12,90,rob);
        rob.openHand
    Rob_move(x2,y2,60,90,rob);
    Rob_move(270,0,60,90,rob);
end