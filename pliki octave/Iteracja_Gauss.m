choice=input('Z ilu wezlow chcesz utworzyc wykres?(4,9,16,25): ');
switch choice
  case 4
  n=4;
  
  case 9
  n=5;
  
  case 16
  n=6;
  
  case 25
  n=7;
  
  otherwise
  disp('ZŁE DANE');
  return ;
end

M=zeros(n);
MG=500;
ML=300;
MP=150;
MD=0;
Mstart=100;
flag=1000;

M(1,:)=MG;
M(2:end-1,1)=ML;
M(2:end-1, end)=MP;
M(end,:)=TD;
M(2:end-1,2:end-1)=Mstart;
M_old=M;
eps=0.01;
il_w=size(M,1);
il_k=size(M,2);
disp(M);

while flag==1000
    for i=2:il_w-1;
        for j=2:il_k-1;
            M(i,j)=(M(i,j-1)+M(i-1,j)+M_old(i+1,j)+M_old(i,j+1))/4;
            eps=abs(M-M_old);
            
        end
    end
    M_old=M;
    if eps<0.01
        flag=flag+1;
    end
end

z = contourf(flip(M));
clabel(z);




