classdef Cube < handle
    % This class defines the properties and methods of a cube with three
    % colors. Each pair of parallel faces has one color.
    % Type 'help Cube.Cube' for more information.
    % Methods:
    % Cube : constructor method
    % grip : for gripping the cube
    % ungrip : for releasing the cube
    % getTopColor : for getting the color of the cube's top face
    % remove : for removing the cube
    % Type 'help Cube.methodName' for more information on the usage of
    % these methods.
    
    %% public properties
    properties (Access = public)
        position = [0 0 12];    % Position of the Center of the cube
        dir1 = [1 0 0]; % Direction of the first face
        dir2 = [0 1 0]; % Direction of the second face
        dir3 = [0 0 1]; % Direction of the third face
        gripped = false;    % Boolean if the cube is currently gripped
        color1 = 'r';   % Color of the first face
        color2 = 'g';   % Color of the second face
        color3 = 'b';   % Color of the third face
        faces = struct();   % Struct containing the face patches
        sidelength = 24;    % Cube side length in mm
        parentaxesh;    % Axes in which the cube is drawn
        points = struct();  %Struct containing the patch points of each face, i.e. the cube corners
        id = 0; % If there are several cubes, each one gets an ID
        removed = false;    % Gives the possibility to remove a cube
    end
    
    %% public methods
    methods (Access = public)
        function obj = Cube()
            % Cube is the constructor method for a Cube object.
            % inputs:
            % axesh is a handle to the axes the cube will be drawn in
            % pos is the position of the cube's center
            % direc1, direc2, direc3 are the directions of the cube's faces
            % otherCubes is a cell containing all other cubes in the axes
            % id is a unique id the cube has to differentiate from other
            %   cubes. Only needed if there is more than one cube
            % output:
            % obj is a Cube object
            % call: cube = Cube(axesh, pos, direc1, direc2, direc3,
            %   otherCubes, id);
        end
        
        function grip(obj)
            % grip lets the cube be gripped. It is Executed when the hand
            % closes around the cube.
            % inputs:
            % fp1, fp2 are the finger tip positions of the robot
            % output:
            % grippedFaceColor is the color of the face the robot touches
            % call: grippedFaceColor = cube.grip(fp1,fp2)
        end
        
        function ungrip(obj)
            % ungrip releases the cube.
            % inputs:
            % pos is the position where the cube is released
            % direc1, direc2, direc3 are the directions of the cube's faces
            % otherCubes is a cell containing all other cubes in the axes
            % call: cube.ungrip(pos, direc1, direc2, direc3, otherCubes)
        end
        
        function getTopColor(obj)
            %getTopColor gives the color of the cube's face which is facing
            % upwards.
            % output:
            % color is the color of the cube's face directed upwards
            % call: color = cube.getTopColor()
        end
        
        function remove(obj)
            % remove removes the cube from the axes.
            % call: cube.remove()
        end
    end
end