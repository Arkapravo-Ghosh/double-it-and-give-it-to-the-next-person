use std::io::{self, Write};
fn main() {
    print!("Enter a number: ");
    io::stdout().flush().unwrap();
    let mut n1 = String::new();
    std::io::stdin()
        .read_line(&mut n1)
        .expect("Failed to read line");
    let n1: i32 = n1.trim().parse().expect("Please type a number!");
    println!("Double it and give it to the next person: {}", n1 * 2);
}
