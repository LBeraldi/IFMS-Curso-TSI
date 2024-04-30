package com.mycompany.javabd;

public class Teste {
    public static void main(String[] args) {
        int contador = 0;
        int pilha = 0;

        String diamante = "<..<..<>";
        String dr = diamante.replaceAll("\\.", "");
        System.out.println(dr);
        char[] teste = dr.toCharArray();

        for (int i = 0; i < teste.length; i++){
            System.out.println(teste[i]);

            if (teste[i] == '<'){
                pilha++;
            } else if (pilha > 0 && teste[i] == '>') {
                pilha--;
                contador++;
            }
        }
        System.out.println(contador);
    }
}
