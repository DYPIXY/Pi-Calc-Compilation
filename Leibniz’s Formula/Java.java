import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;

public class Java {
    public static void main(String args[]){
        BigInteger loop = new BigInteger("10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"); 
        //unhinged test above, fuck it
        //final BigInteger loop         = new BigInteger("10000000000");
        BigInteger denominator  = new BigInteger("1");
        final BigDecimal numerator    = new BigDecimal("4");
        BigDecimal pi           = new BigDecimal("0"); 
        BigInteger i            = new BigInteger("0");
        while(loop.compareTo(i) > 0){
            //divideAndRemainder retuns an array, x[1] is the remainder, then we compare te remainter to se if it's even
            BigInteger[] x = i.divideAndRemainder(BigInteger.TWO);
            if(x[1].equals(BigInteger.ZERO)){
                pi = pi.add((numerator.divide(new BigDecimal(denominator), MathContext.DECIMAL128)));
            } else {
                pi = pi.subtract(numerator.divide(new BigDecimal(denominator), MathContext.DECIMAL128));
            }
            
            //System.out.println(x[0].toString());
            denominator = denominator.add(BigInteger.TWO);
            i = i.add(BigInteger.ONE);
        }
        System.out.println(pi.toString());
    }
}