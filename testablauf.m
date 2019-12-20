%##########################################################################
%
% gescripteter Ablauf, der zwei Würfel tauscht
% 20.12.2019
%
%##########################################################################

function testablauf(rob)
    gelenkwinkel(370,-60,141.9,0,rob);
    rob.closeHand;
    gelenkwinkel(370,-60,180,0,rob);
    gelenkwinkel(160,0,141.9,0,rob);
    rob.openHand;
    gelenkwinkel(250,60,180,0,rob);
    gelenkwinkel(250,60,141.9,0,rob);
    rob.closeHand;
    gelenkwinkel(250,60,180,0,rob);
    gelenkwinkel(370,-60,180,0,rob);
    gelenkwinkel(370,-60,141.9,0,rob);
    rob.openHand;
    gelenkwinkel(370,-60,180,0,rob);
    gelenkwinkel(160,0,141.9,0,rob);
    rob.closeHand;
    gelenkwinkel(250,60,180,0,rob);
    gelenkwinkel(250,60,141.9,0,rob);
    rob.openHand;
    gelenkwinkel(160,0,141.9,0,rob);
end