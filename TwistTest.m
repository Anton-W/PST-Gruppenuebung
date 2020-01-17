function TwistTest(rob)
    Rob_move(370,-60,12,90,rob);
    rob.closeHand;
    Rob_move(370,-60,30,90,rob);
    Rob_move(160,0,12,90,rob);
    rob.openHand;
    Rob_move(160,0,12,40,rob)
    rob.closeHand;
    Rob_move(160,0,20,90,rob)
    pause(2)
    Rob_move(160,0,12,135,rob)
    rob.openHand;
    Rob_move(160,0,60,90,rob);
end