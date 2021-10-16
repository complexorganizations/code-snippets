fn main() {
    // Declare a variable
    declare_variable();
    // Declare and initialize a variable
    declare_and_initialize_variable();
    // Variable initialization with type annotation
    variable_initialization_with_type_annotation();
    // Variable initialization with type annotation and initialization
    variable_initialization_with_type_annotation_and_initialization();
    // String variable
    variable_string();
    // String variable with type annotation
    variable_string_with_type_annotation();
    // String variable with type annotation and initialization
    variable_string_with_type_annotation_and_initialization();
    // Boolean variable
    variable_boolean();
    // Float variable
    variable_floating_point();
}

// Declare a variable
fn declare_variable() {
    let x;
    // Initialize the variable
    x = 1;
    println!("{}", x);
}

// Declare and initialize a variable
fn declare_and_initialize_variable() {
    let x = 2;
    println!("{}", x);
}

// Variable initialization with type annotation
fn variable_initialization_with_type_annotation() {
    let x: i32;
    x = 3;
    println!("{}", x);
}

// Variable initialization with type annotation and initialization
fn variable_initialization_with_type_annotation_and_initialization() {
    let x: i32 = 4;
    println!("{}", x);
}

// String
fn variable_string() {
    let x = "Hello";
    println!("{}", x);
}

// String with type annotation
fn variable_string_with_type_annotation() {
    let x: String;
    x = "Hello".to_string();
    println!("{}", x);
}

// String with type annotation and initialization
fn variable_string_with_type_annotation_and_initialization() {
    let x: String = "Hello".to_string();
    println!("{}", x);
}

// Boolean
fn variable_boolean() {
    let x = true;
    println!("{}", x);
    let y = false;
    println!("{}", y);
}

// Floating point
fn variable_floating_point() {
    let x = 2.2;
    println!("{}", x);
    let y: f32 = 3.1;
    println!("{}", y);
}
