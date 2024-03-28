package com.mycompany.media3;

 import java.util.Scanner;

public class Media3 {

    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);
        
        double n1 = leia.nextDouble();
        double n2 = leia.nextDouble();
        double n3 = leia.nextDouble();
        double n4 = leia.nextDouble();
        double exame = 0;
        double mediaf = 0;

        n1 = (n1 * 2.0);
        n2 = (n2 * 3.0);
        n3 = (n3 * 4.0);
        n4 = (n4 * 1.0);
        
        double media = ((n1+n2+n3+n4)/10.0);
        media = Math.floor(media * 10) / 10;
        
        if (media >= 7.0) {
            System.out.printf("Media: %.1f\n",media);
            System.out.println("Aluno aprovado.");
     
        }else if (media < 5.0) {
            System.out.printf("Media: %.1f\n",media);
            System.out.println("Aluno reprovado.");

        }else if (media >= 5.0 && media <= 6.9) {
            System.out.printf("Media: %.1f\n",media);
            System.out.println("Aluno ems exame.");
             exame = leia.nextDouble();
            System.out.printf("Nota do exame: %.1f\n",exame);
            mediaf = ((exame + media)/2); 

                if (mediaf >= 5.0) {
                    System.out.println("Aluno aprovado.");
                    System.out.printf("Media final: %.1f\n",mediaf);
                
                }else if (media < 5.0) {
                    System.out.println("Aluno reprovado.");
                    System.out.printf("Media final: %.1f\n",mediaf);
           
        }

    }
        
    }
}
