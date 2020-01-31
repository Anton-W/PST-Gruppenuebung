%##########################################################################
%
% Navigation des Drehvorgangs
% 
% Input: Nummer des Würfels, Soll-Farbwert
%
%##########################################################################

function Rot_Nav (Cu,SF,rob)   
    ii = C_Koo(Cu,0);
        x = ii(1); 
        y = ii(2);
        
        Rob_move(270,0,60,90,rob);
        Rob_move(x, y, 60, 90, rob);
        Rob_move(x, y, 12, 90, rob);
            rob.closeHand
        Rob_move(x, y, 60, 90, rob);
            pause(1);
        Rob_move(160,0,60,90,rob);
 
         C_Turn(rob)
         Rob_move(200,0,65,0,rob);
            pause(3);
        IF = Scan_Koo(160,0,65,0,rob);
         Rob_move(160, 0, 60, 90, rob);
            pause(2)
     
        if IF ~= SF
             disp(":(")
           C_Rot(rob);
           C_Turn(rob);
           
                       Rob_move(160, 0, 12, 90, rob);
                 rob.closeHand
          Rob_move(x, y, 60, 90, rob);
                 pause(1);
            Rob_move(x, y, 12, 90, rob);
                rob.openHand
             Rob_move(270,0,60,90,rob); 
           
            
        else
             disp(":^)")
            Rob_move(160, 0, 12, 90, rob);
                 rob.closeHand
          Rob_move(x, y, 60, 90, rob);
                 pause(1);
            Rob_move(x, y, 12, 90, rob);
                rob.openHand
             Rob_move(270,0,60,90,rob); 
             

       end
end