%##########################################################################
%INPUT: FARBMATRIX, SOLLMATRIX
%17.01.2020
%Sucht passende Tauschpartner in der Farbmatrix und Tauscht diese Digital
%und Physisch durch aufrufen der Tauschfunktion.
%Funktion geht für jeden Matrixwert alle darauf folgenden Farbwerte durch
%und prüft,ob diese passende Tauschpartner sind. Dabei muss die Erste
%Position in der Farbmatrix dem Sollwert der Zweiten Position entsprechen
%und umgekehrt. Die Farbwerte dürfen nicht identisch sein.


function tmatrix = tausch(matrix1,matrix2,rob)
tmatrix=matrix1;
matrixfeld=[1,2,3;4,5,6;7,8,9];
%matrix1 Farbmatrix, momentane Anordnung der Würfel
%matrix2 Sollmatrix, vom User angegeben
%ROT 1, BLAU 2, GRÜN 3
for zeile=1:3 
    for spalte=1:3
        
        ist = matrix1(zeile,spalte); %Istwert 1. Position
        soll = matrix2(zeile,spalte); %Sollwert 1. Position
        
        for zeile2=0+zeile:3
            for spalte2=0+spalte:3
                
                ist2=matrix1(zeile2,spalte2); %Istwert 2.Position
                soll2=matrix2(zeile2,spalte2); %Sollwert 2.Position
                
                if ist==soll2 && soll==ist2 && matrix1(zeile,spalte)~=matrix1(zeile2,spalte2) 
                  %Vergleich der Position 1 und 2 und prüfung ob Zahlen
                  %identisch sind
                  %disp([num2str([zeile,spalte]),' Tauschbar mit ',num2str([zeile2,spalte2])]);
                   
                   placeholder = matrix1(zeile,spalte);
                   placeholder2 = matrix1(zeile2,spalte2);
                   tmatrix(zeile2,spalte2)=placeholder;
                   tmatrix(zeile,spalte)=placeholder2;
                   %Speicherung der Tauschung in neuer Matrix (tmatrix)
                   
                 
                   
                   W1 = matrixfeld(zeile,spalte);
                   W2 = matrixfeld(zeile2,spalte2);
                   disp([num2str(W1),' mit ',num2str(W2)]);
                  % disp(tmatrix);
                  % disp('----');
                  
                  C_Trade(W1,W2,rob)
 
                   %HIER VROB TAUSCHFUNKTION EINFÜGEN - Done
                   
                   tmatrix = tausch(tmatrix,matrix2,rob);
                   %Rekursiver Algorithmus, ist kein Tauschpartner
                   %vorhanden wir die Funktion nach dem letzten Tausch
                   %nicht erneut aufgerufen
                   
                   return
                   
                end
                
                
            end
        end
        
    end
end



end