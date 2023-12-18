
fn main() {
    match example_lib::some_example() {
        example_lib::TRUE => {
            println!("True");
        }
        example_lib::FALSE => {
            println!("False");
        }
    }
}
