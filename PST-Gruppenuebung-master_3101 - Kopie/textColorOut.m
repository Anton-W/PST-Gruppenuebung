function [colorOut, colorName] = textColorOut (wanted)
% textColorOut gives a vector of color values as could have been measured 
% by the color sensor as well as the color measured.
% Without input this color will be random; otherwise it can be specified
% by giving the string of a color ('red'/'green'/'blue'/'black') as input.
            % color sensor in a vector containing [red, green, blue]
            % output: vector [red, green, blue], color
            % ('red'/'green'/'blue'/'black')
            % call: [colorOut, colorName] = textColorOut(wanted)