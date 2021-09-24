fn main() {
    // A simple switch statement with integers.
    integer_switch();
    // Switch statements can also be used with strings.
    string_switch();
    // Switch with boolean expressions.
    boolean_switch();
}

// Switch statement with integer
fn integer_switch() {
    let x = 1;
    match x {
        1 => println!("one"),
        2 => println!("two"),
        3 => println!("three"),
        _ => println!("anything"),
    }
}

// Switch statement with string
fn string_switch() {
    let x = "John Doe";
    match x {
        "Jane Doe" => println!("Hi Jane!"),
        "John Doe" => println!("Hi John!"),
        _ => println!("Hi!"),
    }
}

// Switch statement with boolean
fn boolean_switch() {
    let x = true;
    match x {
        true => println!("true"),
        false => println!("false"),
    }
}
