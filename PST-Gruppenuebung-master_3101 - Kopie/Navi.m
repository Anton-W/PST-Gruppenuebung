%##########################################################################
%
% Zeug
% 24.01.2020
%
%##########################################################################

function Navi(SM,rob)
    IM = M_Scan(rob);
    
    NM = tausch(IM,SM,rob);
        pause(2);
    j = 1;
    for i = 1:9
        if mod(i,3) == 0
            j = j+1;
        end    
        if SM(i,j) ~= NM(i,j)
            Rot_Nav (NM(i),SM(i),rob);
        else
            continue
        end 
    end
end