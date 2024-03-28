import java.util.Scanner;

public class sortSimples {
    public static void main(String[] args) throws Exception {
        Scanner leia = new Scanner(System.in);
        
        int a = leia.nextInt();
        int b = leia.nextInt();
        int c = leia.nextInt();       
        
        if (a > b) {
            int temp = a;
            a = b;
            b = temp;
        
        }
        if (b > c) {
            int temp = b;
            b = c;
            c = temp;
        }
        if (a > b) {
            int temp = a;
            a = b;
            b = temp;
        }

        System.out.println(a+"\n"+b+"\n"+c);

    }
}
