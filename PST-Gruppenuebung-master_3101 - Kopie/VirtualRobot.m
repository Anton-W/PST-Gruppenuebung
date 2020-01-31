classdef VirtualRobot < Robot
    % This class defines the properties and methods of a virtual robot arm
    % object, including a gui for visualisation.
    % Type 'help VirtualRobot.VirtualRobot' for more information.
    % Methods:
    % VirtualRobot : constructor method
    % placeCube : for placing a cube in the robot's axes
    % getCurrentPositions : for the robot's joints' current positions in
    %   degrees (hand in mm)
    % getBaseRot : for the base rotation angle in degrees
    % getShoulder : for the shoulder angle in degrees
    % getElbow : for the elbow angle in degrees
    % getWrist : for the wrist angle in degrees
    % getWristRot : for the wrist rotation angle in degrees
    % getHand : for the hand opening in mm
    % getMoving : for the current moving status
    % getSensorColor : for the color currently measured by the color sensor
    % delete : for stopping the robot and closing the window
    % Type 'help VirtualRobot.methodName' for more information on the usage
    % of these methods.
            
%% public properties
    properties (Access = public)
        cubes = {};
    end
    
%% public methods    
    methods (Access = public)
        function obj = VirtualRobot()
            % VirtualRobot is the constructor method for a VirtualRobot
            % object. Cubes can be added automatically. It has the possibility to alter the robot's arm
            % lengths if they are not standard (not recommended).
            % optional inputs:
            % mode can be 'random'. In this case, cubes are added randomly
            %   on the grid. If mode is not 'random' or not set, no cubes
            %   are added.
            % upperArmLength, foreArmLength, handLength can be the lengths
            %   of the robot parts in mm, if different from standard (not
            %   recommended)
            % output:
            % obj is a VirtualRobot object.
            % call: rob = VirtualRobot(mode, upperArmLength, foreArmLength,
            %   handLength)
            % example: rob = VirtualRobot('random')
        end
        
        function placeCube(obj, varargin)
            % placeCube places a cube.
            % inputs:
            % Vargin are the position of the center of the
            %   cube and the face directions of three non-parallel sides.
            %   Default is [100 0 sidelength/2] for the position and
            %   [1 0 0], [0 1 0], [0 0 1] for the directions.
            % call: rob.placeCube(varargin)
            % example: rob.placeCube([290,50,12]])
            %   places a cube at [290,50,12] with the default directions
        end
        
        function getCurrentPositions(obj)
            % getCurrentPositions gives the current angle positions in
            % degrees (hand in mm).
            % output:
            % positions is a vector containing the current angle positions
            % in degrees (hand in mm) in the following order:
            %   1 base rotation
            %   2 shoulder
            %   3 elbow
            %   4 wrist
            %   5 wrist rotation
            %   6 hand
            % call: positions = rob.getCurrentPositions();
        end
        
        function getBaseRot(obj)
            % getBaseRot is the get method for the current base rotation
            % angle.
            % output:
            % baseRot is the current base rotation angle in degrees.
            % call: baseRot = rob.getBaseRot()
        end
        
        function getShoulder(obj)
            % getShoulder is the get method for the current shoulder angle.
            % output:
            % shoulder is the current shoulder angle in degrees.
            % call: shoulder = rob.getShoulder()
        end
        
        function getElbow(obj)
            % getElbow is the get method for the current elbow angle.
            % output:
            % elbow is the current elbow angle in degrees.
            % call: elbow = rob.getElbow()
        end
        
        function getWrist(obj)
            % getWrist is the get method for the current wrist angle.
            % output:
            % wrist is the current wrist angle in degrees.
            % call: wrist = rob.getWrist()
        end
        
        function getWristRot(obj)
            % getWristRot is the get method for the current wrist rotation
            % angle.
            % output:
            % wristRot is the current wrist rotation angle in degrees.
            % call: wristRot = rob.getWristRot()
        end
        
        function getHand(obj)
            % getHand is the get method for the current hand position.
            % output:
            % hand is the current hand opening in mm.
            % call: hand = rob.getHand()
        end
        
        function getMoving(obj)
            % getMoving shows if the robot is currently moving.
            % output:
            % moving is a boolean which is true if the robot is currently
            %   moving and false if not.
            % call: moving = rob.getMoving()
        end
        
        function getSensorColor(obj)
            % getSensorColor gives the values currently measured by the
            % color sensor in a vector containing [red, green, blue]
            % output:
            % sensorColor is a vector containing raw color values for
            %   [red, green, blue].
            % call: sensorData = rob.getSensorColor()
        end
        
        function delete(obj)
            % delete is the destructor function for the VirtualRobot
            % object. It Stops all timer execution and closes the figures.
            % call: rob.delete()
        end
    end
end