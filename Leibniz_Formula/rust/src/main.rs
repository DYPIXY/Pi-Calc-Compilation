//design: https://gist.github.com/BlitzBanana/174f924c9223345128fbd6037ab1e4e8
fn main() {
    let mut pi: f64 = 4.0;
    let loops: i128 = 170141183460469231731687303715884105727;

    for i in 0..loops {
        let denominator: f64 =  (i * 2 + 3) as f64;
        let numerator: f64 = if i % 2 == 0 { -4.0 } else { 4.0 };
        pi += numerator/denominator;
    }

    println!("{pi}");
}
