%
% You weren't supposed to see this ¯\_( °W°)_/¯
%
%##########################################################################

function Turmbau_zu_Babel(rob)

    Rob_move(310,60,60,90,rob)
        pause(1)
    Rob_move(310,60,12,90,rob)
        rob.closeHand
    Rob_move(310,60,60,90,rob)
        pause(1)
    Rob_move(275,85,60,90,rob)
        pause(1)
    Rob_move(275,85,12,90,rob)
        rob.openHand
    Rob_move(275,85,60,90,rob)
        pause(1) 
        
    Rob_move(250,0,60,90,rob)
        pause(1)
    Rob_move(250,0,12,90,rob)
        rob.closeHand
    Rob_move(250,0,60,90,rob)
        pause(1)
    Rob_move(235,25,60,90,rob)
        pause(1)
    Rob_move(235,25,12,90,rob)
        rob.openHand
    Rob_move(235,25,60,90,rob)
        pause(1) 
        
        
    Rob_move(310,-60,60,90,rob)
        pause(1)
    Rob_move(310,-60,12,90,rob)
        rob.closeHand
    Rob_move(310,-60,60,90,rob)
        pause(1)
    Rob_move(275,-85,60,90,rob)
        pause(1)
    Rob_move(275,-85,12,90,rob)
        rob.openHand
    Rob_move(275,-85,60,90,rob)
        pause(1)
        
    Rob_move(370,0,60,90,rob)
        pause(1)
    Rob_move(370,0,12,90,rob)
        rob.closeHand
    Rob_move(370,0,60,90,rob)
        pause(1)
    Rob_move(235,-25,60,90,rob)
        pause(1)
    Rob_move(235,-25,12,90,rob)
        rob.openHand
    Rob_move(235,-25,60,90,rob)
        pause(1)
        
    Rob_move(160,0,60,90,rob);
        pause(1)
     
    for ii = 1:25                                    
        disp(' :^) ')   % :^)
        
        rob.moveAngles(5, (90*(-1)^(ii)), -1)    
            pause(1);
    end 
end