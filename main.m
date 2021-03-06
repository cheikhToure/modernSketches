% Cheikh Toure

clear all

lw=2; %Linewidth
fs=18; %Fontsize
fw='Bold'; %FontWeight
fsa=16; %Fontsize

tab_n =5:1:20;
n=length(tab_n);

tab_s = tab_n; 

Tn = zeros(size(tab_n));
Ts = zeros(size(tab_n));
T_srht = zeros(size(tab_n));


for i = 1:n
    
    N = 2^(tab_n(i));
   s = tab_s(i);
   %s=1;
   
    x = rand(N,1);
        
  idx = randi(N,s,1); 
 % idx=3*ones(N,1);
   
    tic
     hadamards(x,idx);
    %a(idx);
    toc
    Ts(i) = toc;
   
    tic
    a = hadamardn(x);
    a(idx);
    toc
    Tn(i) = toc;
    
   

    i
end

%,tab_n,T_srht
figure(3);
clf

 plot(tab_n,Tn,tab_n,Ts,'Linewidth',lw);
 xlabel('Absciss (in log_2(n) where n is the length of the input)','FontSize',fs,'FontWeight',fw);
 ylabel('Ordinate (time in sec)','FontSize',fs,'FontWeight',fw);
 title('Time complexities','FontSize',fs,'FontWeight',fw);
 set(gca,'FontWeight',fw,'FontSize',fsa);
 legend({'Time (hadamardn)','Time (hadamard with s = log_2(n))'},'FontWeight',fw,'FontSize',fsa);
 
 %%
 %%

 s=4;
  idx = randi(N,s,1); 
for i = 1:5
    tab(:,i) = hadamards(A(:,i),idx);
end


 
 
 
 
 
