classdef Robot < handle
    % This class defines the properties and methods of an abstract robot arm that can
    % be either virtual or real.
    % Non-abstract methods:
    % start : for starting the robot
    % moveAngles : for moving the robot
    % openHand : for opening the robot's hand
    % closeHand : for closing the robot's hand
    % waitFor : for waiting for the robot to stop moving
    % Type 'help Robot.methodName' for more information on the usage of
    % these methods.
    
    %% public properties
    properties (Access = public)
        upperArmLength=166;
        foreArmLength=218;
        handLength=101;
        handWidth=31;
        fingerLength = 28.9;
        baseHeight=122;
        maxSpeed = 60;  % robot must not move faster than this degrees per second
    end
    
    %% abstract public methods
    methods (Abstract, Access=public)
        baseRot=getBaseRot(obj);
        shoulder=getShoulder(obj);
        elbow=getElbow(obj);
        wrist=getWrist(obj);
        wristRot=getWristRot(obj);
        hand=getHand(obj);
        moving = getMoving(obj);
        positions = getCurrentPositions(obj);
    end
    
    %% public methods
    methods (Access=public)
        function start(obj)
            % start starts the robot and/or moves him to starting position.
            % call: rob.start
        end
        
        function moveAngles(obj)
            % moveAngles lets the robot move his joints to specified
            % angles.
            % Input:
            % channels is a vector containing the joints to move, where
            %   1 is base rotation
            %   2 is the shoulder
            %   3 is the elbow
            %   4 is the wrist
            %   5 is the wrist rotation.
            % destinations is a vector containing the angle destinations
            %   for the angles specified in channels.
            % time is the movement time. If the time is too short for a
            %   single joint movement, the motor will go as fast as he can.
            %   This will result in different times for different joint
            %   movements when multiple joints are moved at once. To avoid
            %   this, set time to -1 (recommended), which will move all
            %   joints in a time where the longest distance is moved in
            %   maximum speed.
            % call: rob.moveAngles(channels, destinations, time)
            % example: rob.moveAngles([1,5,3],[45,70,30],3) will move the
            % base rotation to 45 degrees, wrist to 70 degrees and elbow to
            % 30 degrees within 3 seconds.
        end
        
        function openHand(obj)
            % openHand opens the hand.
            % call: rob.openHand()
        end
        
        function closeHand(obj)
            % closeHand closes the hand.
            % call: rob.closeHand();
        end
                
        function waitFor(obj)
            % waitFor blocks program execution until the robot no longer
            % moves. Lets the robot finish his current movement.
            % call: rob.waitFor()
        end
        
        function setMaxSpeed(obj)
            % setMaxSpeed lets the user set the robot's maximum speed in
            % degrees per second. It cannot be larger than 30. If so, the
            % maximum speed will be set to 30.
            % input:
            % newMaxSpeed is the new maximum speed in degrees per second.
        end
    end
end

