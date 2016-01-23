clc
clear

mat = zeros(70,1)
//disp(mat)

for i = 1:70
    answer = 0
    while(answer~=1 & answer~=2)
        answer = input("Pregunta " + string(i) + ": ")
        mat(i,1) = answer
        if(answer~=1 & answer~=2)
            disp("ERROR Input inválido")
        end
    end
end

cientificos = 0
administrativo = 0
aireLibre = 0
mecanicos = 0
artisticos = 0
relacionales = 0
sociales = 0

for i = 1:70
    x = mat(i,1)
    
    if(i==5 | i==10 | i==25 | i==31 | i==46 | i==53 | i==55 | i==56 | i==59 | i==69)
        if(x==1)
            cientificos=cientificos+1
        end
    end
    if(i==8 | i==18 | i==19 | i==29 | i==43 | i==48 | i==54 | i==57 | i==62 | i==70)
        if(x==1)
            administrativo=administrativo+1
        end
    end
    if(i==11 | i==13 | i==17 | i==26 | i==41 | i==51 | i==52 | i==60 | i==63 | i==65)
        if(x==1)
            aireLibre=aireLibre+1
        end
    end
    if(i==1 | i==9 | i==16 | i==23 | i==36 | i==37 | i==38 | i==49 | i==64 | i==66)
        if(x==1)
            mecanicos=mecanicos+1
        end
    end
    if(i==4 | i==12 | i==21 | i==22 | i==24 | i==28 | i==32 | i==35 | i==45 | i==68)
        if(x==1)
            artisticos=artisticos+1
        end
    end
    if(i==3 | i==7 | i==14 | i==15 | i==27 | i==34 | i==39 | i==44 | i==58 | i==67)
        if(x==1)
            relacionales=relacionales+1
        end
    end
    if(i==2 | i==6 | i==20 | i==30 | i==33 | i==40 | i==42 | i==47 | i==50 | i==61)
        if(x==1)
            sociales=sociales+1
        end
    end
end

tags = 1:7
ans = [cientificos,administrativo,aireLibre,mecanicos,artisticos,relacionales,sociales]
plot(tags, ans, style=color("blue"))

disp("Cientificos = " + string(cientificos))
disp("Administrativo = " + string(administrativo))
disp("Aire libre = " + string(aireLibre))
disp("Mecánicos = " + string(mecanicos))
disp("Artísticos = " + string(artisticos))
disp("Relacionales = " + string(relacionales))
disp("Sociales = " + string(sociales))

