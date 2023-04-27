import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;

public class Java {
    public static void main(String args[]){
        //BigInteger loop = new BigInteger("100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"); 
        //unhinged test above fuck it we ball
        final BigInteger loop         = new BigInteger("1000000");
        BigInteger denominator  = new BigInteger("1");
        final BigDecimal numerator    = new BigDecimal("4");
        BigDecimal pi           = new BigDecimal("0"); 
        BigInteger i            = new BigInteger("0");
        while(loop.compareTo(i) > 0){
            //divideAndRemainder retuns an array, x[1] is the remainder, then we compare te remainter to se if it's even
            //Rounding wrong, gonna see it when i come back
            BigInteger[] x = i.divideAndRemainder(BigInteger.TWO);
            if(x[1].equals(BigInteger.ZERO)){
                pi = pi.add((numerator.divide(new BigDecimal(denominator), RoundingMode.UP)));
            } else {
                pi = pi.subtract(numerator.divide(new BigDecimal(denominator), RoundingMode.UP));
            }
            
            //System.out.println(x[0].toString());
            denominator = denominator.add(BigInteger.TWO);
            i = i.add(BigInteger.ONE);
        }
        System.out.println(pi.toEngineeringString());
    }
}