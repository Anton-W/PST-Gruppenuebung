x = 0;
while true 
    
  [colorOut, colorName] = textColorOut();
     
     if strcmp(colorName, farberkennung(colorOut)) ~= false
         disp(colorName);
         disp(colorOut);
         break
     end
   
  
  x = x+1;
        
end
  
