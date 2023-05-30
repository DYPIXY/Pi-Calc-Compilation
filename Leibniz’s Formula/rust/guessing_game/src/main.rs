use std::io;

fn generic() {
    println!("Generic.");

}

fn main() {
    println!("Guess the number!");
    let mut guess = String::new(); 

    generic();

    io::stdin()
        .read_line(&mut guess)
        .expect("Failed to read line");

    println!("You guessed: {guess}");
}
