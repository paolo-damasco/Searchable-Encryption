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


%GRAFICO 1 WANG_2021
figure;
bar3(l_wang2021_1)
xlabel('Numero di Trapdoor (Q)');
ylabel('Numero di Edge Servers (N)');
zlabel('Lambda');
title('Grafico 3D - WANG 2021 (64 CORES)');

%GRAFICO 1 ALGORITMO_2023
figure;
bar3(l_2023_1)
xlabel('Numero di Trapdoor (Q)');
ylabel('Numero di Edge Servers (N)');
zlabel('Lambda');
title('Grafico 3D - ALGORITMO 2023 (64 CORES)');

%GRAFICO 2 WANG_2021
figure;
bar3(l_wang2021_2)
xlabel('Numero di Trapdoor (Q)');
ylabel('Numero di Edge Servers (N)');
zlabel('Lambda');
title('Grafico 3D - WANG 2021 (128 CORES)');

%GRAFICO 2 ALGORITMO_2023
figure;
bar3(l_2023_2)
xlabel('Numero di Trapdoor (Q)');
ylabel('Numero di Edge Servers (N)');
zlabel('Lambda');
title('Grafico 3D - ALGORITMO 2023 (128 CORES)');

%GRAFICO 3 WANG_2021
figure;
bar3(l_wang2021_3)
xlabel('Numero di Trapdoor (Q)');
ylabel('Numero di Edge Servers (N)');
zlabel('Lambda');
title('Grafico 3D - WANG 2021 (256 CORES)');

%GRAFICO 3 ALGORITMO_2023
figure;
bar3(l_2023_3)
xlabel('Numero di Trapdoor (Q)');
ylabel('Numero di Edge Servers (N)');
zlabel('Lambda');
title('Grafico 3D - ALGORITMO 2023 (256 CORES)');