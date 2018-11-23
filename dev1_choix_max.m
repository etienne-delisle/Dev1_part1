%initial clear
clc; clear global;

%Définition des domaines
X=linspace(0,6*pi,400);
X_s=linspace(0,pi,100);

%Fonctions aléatoires avec 4 sommets
Y1=[rand(1)*sin(X_s),rand(1)*sin(X_s),rand(1)*sin(X_s),rand(1)*sin(X_s)];
Y2=[rand(1)*sin(X_s),rand(1)*sin(X_s),rand(1)*sin(X_s),rand(1)*sin(X_s)];

%Définition des sommets en ordre descendant (y,x)
[psor1,lsor1]= findpeaks(Y1,X,'Sortstr','descend');
[psor2,lsor2]= findpeaks(Y2,X,'Sortstr','descend');

%Séparation des max (x,y)
psor1_1st=psor1(1);lsor1_1st=lsor1(1);
psor2_1st=psor2(1);lsor2_1st=lsor2(1);

psor1_rst=psor1(2:end);lsor1_rst=lsor1(2:end);
psor2_rst=psor2(2:end);lsor2_rst=lsor2(2:end);

%Plot section
hold on;grid on;

findpeaks(Y1,X);
findpeaks(Y2,X);

%Définition du pic le plus haut
if psor1_1st<psor2_1st
    text(lsor1_1st+.2,psor1_1st+.02,num2str(psor1_1st),'color',[.5 .5 .5]);
    text(lsor2_1st+.2,psor2_1st+.02,num2str(psor2_1st),'color','g');
else
    text(lsor1_1st+.2,psor1_1st+.02,num2str(psor1_1st),'color','r');
    text(lsor2_1st+.2,psor2_1st+.02,num2str(psor2_1st),'color',[.5 .5 .5]);
end

text(lsor1_rst+.2,psor1_rst+.02,num2str(psor1_rst'),'color',[.5 .5 .5]);
text(lsor2_rst+.2,psor2_rst+.02,num2str(psor2_rst'),'color',[.5 .5 .5]);

hold off;