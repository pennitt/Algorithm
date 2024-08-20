import java.math.BigInteger;
import java.util.*;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int num = sc.nextInt();
        System.out.println(factorial(num));
    }

    static BigInteger factorial(int num) {
        if (num > 1) {
            return factorial(num - 1).multiply(BigInteger.valueOf(num));
        } else {
            return BigInteger.ONE;
        }
    }
}