fn main() {
    let numerator = 4.0;
    let mut denominator = 1.0;
    let mut pi = 0.0;
    let iterations = 100000000;
    
    for i in 0..iterations+1 {
        if i % 2 == 0 {
            pi += numerator/denominator;
        }
        else {
            pi -= numerator/denominator ;
            denominator += 2.0;
        }
    }
    println!("{pi}");
}
