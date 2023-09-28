N = [5, 10, 15];   % Numero di Edge Servers
m_e = [64, 128, 256];  % Numero di cores dell'Edge Server
P_ae = [487, 268, 652]; % Potenza in processing (in W)
P_0e = [170, 79, 126];  % Potenza in idle (in W)
Q = [50, 100, 150]; % Numero di trapdoor

% ALGORITMO WANG2021
sigma_se_wang2021 = 0.00001840;
t_se_wang2021 = 0.002341708;

% ALGORITMO 2023
sigma_se_2023 = 0.00000169;
t_se_2023 = 0.00079798;

for i=1:3
    l_wang2021_1(i,:)=(N(i).*m_e(1))./(Q.*t_se_wang2021);
    l_2023_1(i,:)=(N(i).*m_e(1))./(Q.*t_se_2023);
end
for i=1:3
    l_wang2021_2(i,:)=(N(i).*m_e(2))./(Q.*t_se_wang2021);
    l_2023_2(i,:)=(N(i).*m_e(2))./(Q.*t_se_2023);
end
for i=1:3
    l_wang2021_3(i,:)=(N(i).*m_e(3))./(Q.*t_se_wang2021);
    l_2023_3(i,:)=(N(i).*m_e(3))./(Q.*t_se_2023);
end




%TROVO I VALORI MINIMI DI LAMBDA PER SCENARIO PER WANG2021
valore_minimo_l_wang2021 = min(l_wang2021_1(:));
valore_minimo_2_wang2021 = min(l_wang2021_2(:));
valore_minimo_3_wang2021 = min(l_wang2021_3(:));

%CALCOLO I VALORI DELLE ENERGIE PER SCENARIO PER WANG2021
for i=1:3
    E_wang2021_1(i,:) = ((valore_minimo_l_wang2021.*Q.*t_se_wang2021)./(N(i).*m_e(1)) )*(P_ae(1)-P_0e(1)) + P_0e(1);
end

for i=1:3
    E_wang2021_2(i,:) = ((valore_minimo_2_wang2021.*Q.*t_se_wang2021)./(N(i).*m_e(2)) )*(P_ae(2)-P_0e(2)) + P_0e(2);
end

for i=1:3
    E_wang2021_3(i,:) = ((valore_minimo_3_wang2021.*Q.*t_se_wang2021)./(N(i).*m_e(3)) )*(P_ae(3)-P_0e(3)) + P_0e(3);
end

%TROVO I VALORI MINIMI DI LAMBDA PER SCENARIO PER ALGO2023 
valore_minimo_l_2023 = min(l_2023_1(:));
valore_minimo_2_2023 = min(l_2023_2(:));
valore_minimo_3_2023 = min(l_2023_3(:));

%CALCOLO I VALORI DELLE ENERGIE PER SCENARIO PER ALGO2023
for i=1:3
    E_2023_1(i,:) = ((valore_minimo_l_2023.*Q.*t_se_2023)./(N(i).*m_e(1)) )*(P_ae(1)-P_0e(1)) + P_0e(1);
end

for i=1:3
    E_2023_2(i,:) = ((valore_minimo_2_2023.*Q.*t_se_2023)./(N(i).*m_e(2)) )*(P_ae(2)-P_0e(2)) + P_0e(2);
end

for i=1:3
    E_2023_3(i,:) = ((valore_minimo_3_2023.*Q.*t_se_2023)./(N(i).*m_e(3)) )*(P_ae(3)-P_0e(3)) + P_0e(3);
end

%CALCOLO I VALORI DELLE W PER SCENARIO PER WANG2021
for i=1:3
W_wang2021_1(i,:) = (((1./valore_minimo_l_wang2021^2)+(((Q./N(i))*sigma_se_wang2021^2)./m_e(1)))+((m_e(1)-1)./(m_e(1)^2))*(Q.^2./N(i).^2).*t_se_wang2021.^2)./((2/valore_minimo_l_wang2021).*(1-((valore_minimo_l_wang2021.*Q.*t_se_wang2021)./(N.*m_e(1)))));
end

for i=1:3
W_wang2021_2(i,:) = (((1./valore_minimo_2_wang2021^2)+(((Q./N(i))*sigma_se_wang2021^2)./m_e(2)))+((m_e(2)-1)./(m_e(2)^2))*(Q.^2./N(i).^2).*t_se_wang2021.^2)./((2/valore_minimo_2_wang2021).*(1-((valore_minimo_2_wang2021.*Q.*t_se_wang2021)./(N.*m_e(2)))));
end

for i=1:3
W_wang2021_3(i,:) = (((1./valore_minimo_3_wang2021^2)+(((Q./N(i))*sigma_se_wang2021^2)./m_e(3)))+((m_e(3)-1)./(m_e(3)^2))*(Q.^2./N(i).^2).*t_se_wang2021.^2)./((2/valore_minimo_3_wang2021).*(1-((valore_minimo_3_wang2021.*Q.*t_se_wang2021)./(N.*m_e(3)))));
end


%CALCOLO I VALORI DELLE W PER SCENARIO PER ALGO2023
for i=1:3
W_2023_1(i,:) = (((1./valore_minimo_l_2023^2)+(((Q./N(i))*sigma_se_2023^2)./m_e(1)))+((m_e(1)-1)./(m_e(1)^2))*(Q.^2./N(i).^2).*t_se_2023.^2)./((2/valore_minimo_l_2023).*(1-((valore_minimo_l_2023.*Q.*t_se_2023)./(N.*m_e(1)))));
end

for i=1:3
W_2023_2(i,:) = (((1./valore_minimo_2_2023^2)+(((Q./N(i))*sigma_se_2023^2)./m_e(2)))+((m_e(2)-1)./(m_e(2)^2))*(Q.^2./N(i).^2).*t_se_2023.^2)./((2/valore_minimo_2_2023).*(1-((valore_minimo_2_2023.*Q.*t_se_2023)./(N.*m_e(2)))));
end

for i=1:3
W_2023_3(i,:) = (((1./valore_minimo_3_2023^2)+(((Q./N(i))*sigma_se_2023^2)./m_e(3)))+((m_e(3)-1)./(m_e(3)^2))*(Q.^2./N(i).^2).*t_se_2023.^2)./((2/valore_minimo_3_2023).*(1-((valore_minimo_3_2023.*Q.*t_se_2023)./(N.*m_e(3)))));
end


%GRAFICO E 1 2023
figure;
bar3(E_2023_1)
xlabel('Numero di Trapdoor (Q)');
ylabel('Numero di Edge Servers (N)');
zlabel('Tempo di attesa medio');
title('Energia al variare del numero di trapdoor ed edge server (Algoritmo 2023 - 1)');

%GRAFICO E 2 2023
figure;
bar3(E_2023_2)
xlabel('Numero di Trapdoor (Q)');
ylabel('Numero di Edge Servers (N)');
zlabel('Tempo di attesa medio');
title('Energia al variare del numero di trapdoor ed edge server (Algoritmo 2023 - 2)');

%GRAFICO E 3 2023
figure;
bar3(E_2023_3)
xlabel('Numero di Trapdoor (Q)');
ylabel('Numero di Edge Servers (N)');
zlabel('Tempo di attesa medio');
title('Energia al variare del numero di trapdoor ed edge server (Algoritmo 2023 - 3)');

%GRAFICO E 1 Wang2021
figure;
bar3(E_wang2021_1)
xlabel('Numero di Trapdoor (Q)');
ylabel('Numero di Edge Servers (N)');
zlabel('Tempo di attesa medio');
title('Energia al variare del numero di trapdoor ed edge server (Wang 2021 - 1)');

%GRAFICO E 2 Wang2021
figure;
bar3(E_wang2021_2)
xlabel('Numero di Trapdoor (Q)');
ylabel('Numero di Edge Servers (N)');
zlabel('Tempo di attesa medio');
title('Energia al variare del numero di trapdoor ed edge server (Wang 2021 - 2)');

%GRAFICO E 3 Wang2021
figure;
bar3(E_wang2021_3)
xlabel('Numero di Trapdoor (Q)');
ylabel('Numero di Edge Servers (N)');
zlabel('Tempo di attesa medio');
title('Energia variare del numero di trapdoor ed edge server (Wang 2021 - 3)');



%GRAFICI DELLE w
%GRAFICO W 1 2023
figure;
bar3(W_2023_1)
xlabel('Numero di Trapdoor (Q)');
ylabel('Numero di Edge Servers (N)');
zlabel('Tempo di attesa medio');
title('Tempo di attesa al variare del numero di trapdoor ed edge server (Algoritmo 2023 - 1)');

%GRAFICO W 2 2023
figure;
bar3(W_2023_2)
xlabel('Numero di Trapdoor (Q)');
ylabel('Numero di Edge Servers (N)');
zlabel('Tempo di attesa medio');
title('Tempo di attesa al variare del numero di trapdoor ed edge server (Algoritmo 2023 - 2)');

%GRAFICO W 3 2023
figure;
bar3(W_2023_3)
xlabel('Numero di Trapdoor (Q)');
ylabel('Numero di Edge Servers (N)');
zlabel('Tempo di attesa medio');
title('Tempo di attesa al variare del numero di trapdoor ed edge server (Algoritmo 2023 - 3)');

%GRAFICO W 1 Wang2021
figure;
bar3(W_wang2021_1)
xlabel('Numero di Trapdoor (Q)');
ylabel('Numero di Edge Servers (N)');
zlabel('Tempo di attesa medio');
title('Tempo di attesa al variare del numero di trapdoor ed edge server (Wang 2021 - 1)');

%GRAFICO W 2 Wang2021
figure;
bar3(W_wang2021_2)
xlabel('Numero di Trapdoor (Q)');
ylabel('Numero di Edge Servers (N)');
zlabel('Tempo di attesa medio');
title('Tempo di attesa al variare del numero di trapdoor ed edge server (Wang 2021 - 2)');

%GRAFICO E 3 Wang2021
figure;
bar3(W_wang2021_3)
xlabel('Numero di Trapdoor (Q)');
ylabel('Numero di Edge Servers (N)');
zlabel('Tempo di attesa medio');
title('Tempo di attesa al variare del numero di trapdoor ed edge server (Wang 2021 - 3)');