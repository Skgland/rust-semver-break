

const FALSE: example_lib::Example = example_lib::some_example();

fn main() {
    match example_lib::some_example() {
        example_lib::TRUE => {
            println!("True");
        }
        self::FALSE => {
            println!("False");
        }
    }
}
