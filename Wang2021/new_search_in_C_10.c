#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <math.h>
#include "pbc/pbc.h"
#include "pbc/pbc_test.h"
#include <sys/time.h>
#include <stddef.h>



#define N_ATTR 5

pbc_param_t params;
pairing_t pairing;
element_t p1, p2, base, _exp, mul1, mul2, gt1;
element_t p_res, exp_res, mul_res, gt_exp_res;

int i, j, n, k, l;
int min, sec;
double t_start, t_end;
long long utc_start, utc_end;





long long current_timestamp()
{

    struct timeval te;

    gettimeofday(&te, NULL);	// get current time
    long long milliseconds = te.tv_sec * 1000LL + te.tv_usec / 1000;	// calculate milliseconds
    //printf("milliseconds: %lld\n", milliseconds);

    return milliseconds;

}
;



int main(int argc, char** argv) 
{
    int seed = 1;
    for(int seed=1; seed<=1000;seed++)
    {
        srand(seed);

        /*char stringa_arrivo[20];
        strcpy(stringa_arrivo,argv[1]);
        int valore_arrivo;
        valore_arrivo = atof(stringa_arrivo);*/    
        /*char stringa_arrivo[20];
        strcpy(stringa_arrivo,argv[1]);
        double valore_arrivo;
        valore_arrivo = atof(stringa_arrivo);


        char stringa_tempo_zero[20];
        strcpy(stringa_tempo_zero,argv[2]);
        long long valore_tempo_zero;
        valore_tempo_zero = atof(stringa_tempo_zero);
    
        char stringa_tempo_uno[20];
        strcpy(stringa_tempo_uno,argv[3]);
        long long valore_tempo_uno;
        valore_tempo_uno = atof(stringa_tempo_uno);

        char stringa_tempo_avvio_binario[20];
        strcpy(stringa_tempo_avvio_binario,argv[4]);
        long long valore_tempo_avvio_binario;
        valore_tempo_avvio_binario = atof(stringa_tempo_avvio_binario);*/
    
        long long utc_start = current_timestamp();
        //printf("%lld", utc_start);
        // inizializzazione pairing con curva ellittica di tipo A

        int qbits = 512;
        int rbits = 160;
        pbc_param_init_a_gen(params, rbits, qbits);
        pairing_init_pbc_param(pairing, params);

        // controllo sulle dimensioni elementi di G1, G2, GT e Z
        //printf("G1 length: %d bytes\n", pairing_length_in_bytes_G1(pairing));
        //printf("G2 length: %d bytes\n", pairing_length_in_bytes_G2(pairing));
        //printf("GT length: %d bytes\n", pairing_length_in_bytes_GT(pairing));
        //printf("Z length: %d bytes\n", pairing_length_in_bytes_Zr(pairing));

        // inizializzazione elementi di G1, G2 e Z
        element_init_G1(p1, pairing);
        element_init_G1(base, pairing);

        element_init_G2(p2, pairing);

        element_init_GT(gt1, pairing);
        element_init_GT(gt_exp_res, pairing);
        element_init_GT(p_res, pairing);

        element_init_Zr(_exp, pairing);
        element_init_Zr(mul1, pairing);
        element_init_Zr(mul2, pairing);
        element_init_Zr(mul_res, pairing);
        element_init_Zr(exp_res, pairing);

        element_random(p1);
        element_random(p2);
        element_random(base);
        element_random(_exp);
        element_random(mul1);
        element_random(mul2);
        element_random(gt1);


        /*
        element_printf("p1:  %B\n", p1);
        element_printf("p2:  %B\n", p2);
        element_printf("base:  %B\n", base);
        element_printf("exp:  %B\n", _exp);
        element_printf("mul1:  %B\n", mul1);
        element_printf("mul2:  %B\n", mul2);
        element_printf("gt1:  %B\n", gt1);
        */

            //+++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
        // Encryption attrib  
        /*
        
        for (i=0; i<N_ATTR; i++)
        {
            element_pairing(p_res, p1, p2);
        }

        for (i=0; i<(2*N_ATTR+3); i++)
        {
            element_pow_zn(exp_res, base, _exp);
        }
        
        for (i=0; i<(N_ATTR+4); i++)
        {
            element_pow_zn(exp_res, base, _exp);
        }

        
        */
        //+++++++++++++++++++++++++++++++++++++++++++++++++++++++ 

    
        for(int n_trapd = 0; n_trapd <500 ; n_trapd++)
        {

        //+++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
        //Search Wang2021 (Tse = 1∗E + 2∗P + 1*Mg)
        element_pow_zn(exp_res, base, _exp);
        element_pairing(p_res, p1, p2);
        element_pairing(p_res, p1, p2);
        element_mul(p2, p1, p1);    
        //+++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
        
        /*
        //SEARCH ALGORITMO2023
        element_pairing(p_res, p1, p2);
        element_pow_zn(exp_res, base, _exp);
        element_mul(p2, p1, p1);    
        */
        }
	


        //+++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
        // Decryption attrib (Tdec = 1∗P + 1∗E + 2∗Mz)
        /*
        for (i=0; i<5; i++)
        {
            element_pairing(p_res, p1, p2);
        }
        for (i=0; i<(2*N_ATTR); i++)
        {
            element_pow_zn(exp_res, base, _exp);
        }
        */
        //+++++++++++++++++++++++++++++++++++++++++++++++++++++++ 



        long long utc_end = current_timestamp();
        //printf("%lld", utc_end);

        //printf("%lld %lld %lld \n", utc_start, utc_end, (utc_end - utc_start));
        char stringa[255];
        //        sprintf(stringa, "echo  '%f %lld %lld %lld %lld %lld %lld' >> log_execution_search.txt  ", valore_arrivo, valore_tempo_zero, valore_tempo_uno, valore_tempo_avvio_binario, utc_start, utc_end, (utc_end - utc_start));
        sprintf(stringa, "echo  '%lld %lld %lld' >> log_execution_search_500_algoritmo2023.txt  ", utc_start, utc_end, (utc_end - utc_start));
        system(stringa);



        element_clear(p1);
        element_clear(p2);
        element_clear(_exp);
        element_clear(base);
        element_clear(mul1);
        element_clear(mul2);
        element_clear(exp_res);
        element_clear(p_res);
        element_clear(mul_res);

        pairing_clear(pairing);
    }

          
    return 0;
}



/*
ISTRUZIONI ESECUZIONE FILE:

compilare con comando:
gcc -o bin/prova search_new_modificato.c -L. -lm -lgmp -lpbc

per eseguire nella corrente configurazione:
./bin/prova argv[1]

*/


