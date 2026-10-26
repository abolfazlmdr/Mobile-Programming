import java.util.Scanner;

public class AgeChecker {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("سن خود را وارد کنید: ");
        int age = input.nextInt();

        if (age >= 18) {
            System.out.println("سن شما حداقل ۱۸ سال است؛ شما بزرگسال محسوب می‌شوید.");
        } else {
            System.out.println("سن شما کمتر از ۱۸ سال است.");
        }

        input.close();
    }
}
