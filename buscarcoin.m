% This function search matches between tags of image and tags of all classes
% - imag1: is the image that classified
% - c1, c2, c3, c4, c5, c6, c7, c8: are the classes that used for classifier imag1

%_________________________________________________________________________________

function solucion=buscarcoin(imag1,c1,c2,c3,c4,c5,c6,c7,c8)
    L=length(imag1);
    L1=length(c1);
    L2=length(c2);
    L3=length(c3);
    L4=length(c4);
    L5=length(c5);
    L6=length(c6);
    L7=length(c7);
    L8=length(c8);

cont=0;    
for i=2:L1
    for j=2:L
         sol=strcmp(c1(i),imag1(j));
         if sol==1
            cont=cont+1;
         end
    end
end

cont1=0;
for i=2:L2
    for j=2:L
        sol=strcmp(c2(i),imag1(j));
        if sol==1
            cont1=cont1+1;
        end
    end
end  


cont2=0;
for i=2:L3
    for j=2:L
        sol=strcmp(c3(i),imag1(j));
        if sol==1
            cont2=cont2+1;
        end
    end
end  

cont3=0;
for i=2:L4
    for j=2:L
        sol=strcmp(c4(i),imag1(j));
        if sol==1
            cont3=cont3+1;
        end
    end
end 

cont4=0;
for i=2:L5
    for j=2:L
        sol=strcmp(c5(i),imag1(j));
        if sol==1
            cont4=cont4+1;
        end
    end
end  

cont5=0;
for i=2:L6
    for j=2:L
        sol=strcmp(c6(i),imag1(j));
        if sol==1
            cont5=cont5+1;
        end
    end
end  

cont6=0;
for i=2:L7
    for j=2:L
        sol=strcmp(c7(i),imag1(j));
        if sol==1
            cont6=cont6+1;
        end
    end
end  

cont7=0;
for i=2:L8
    for j=2:L
        sol=strcmp(c8(i),imag1(j));
        if sol==1
            cont7=cont7+1;
        end
    end
end  

    
solucion=[cont,cont1,cont2,cont3,cont4,cont5,cont6,cont7];
