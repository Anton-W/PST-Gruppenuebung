%##########################################################################
%
% gescripteter Ablauf, der zwei Würfel tauscht
% 20.12.2019
%
% Z - koordinaten müssen für V2 angepasst werden!
%
%##########################################################################

function testablauf(rob)
    Rob_move(370,-60,141.9,90,rob);
    rob.closeHand;
    Rob_move(370,-60,180,90,rob);
    Rob_move(160,0,141.9,90,rob);
    rob.openHand;
    Rob_move(250,60,180,90,rob);
    Rob_move(250,60,141.9,90,rob);
    rob.closeHand;
    Rob_move(250,60,180,90,rob);
    Rob_move(370,-60,180,90,rob);
    Rob_move(370,-60,141.9,90,rob);
    rob.openHand;
    Rob_move(370,-60,180,90,rob);
    Rob_move(160,0,141.9,90,rob);
    rob.closeHand;
    Rob_move(250,60,180,90,rob);
    Rob_move(250,60,141.9,90,rob);
    rob.openHand;
    Rob_move(160,0,141.9,90,rob);
end
