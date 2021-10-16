fn main() {
    // == Operator checks if two things are equal.
    equals_operator();
    // != Operator checks if two things are not equal.
    not_equals();
    // && Operator is a and operator, and checks if both conditions are true.
    and_operator();
    // || Operator is a or operator, and checks if either condition is true.
    or_operator();
}

// == Operator checks if two things are the same.
fn equals_operator() {
    let first_value: String = "Apple".to_string();
    let second_value: String = "Apple".to_string();
    if first_value == second_value {
        println!("The values are the same.");
    }
}

// != Operator checks if two things are not equal.
fn not_equals() {
    let first_value: String = "Apple".to_string();
    let second_value: String = "Apple".to_string();
    if first_value != second_value {
        println!("The values are not the same")
    }
}

// && Operator is a and operator, and checks if both conditions are true.
fn and_operator() {
    let first_value: bool = true;
    let second_value: bool = false;
    if first_value && second_value {
        println!("Both values are true.");
    }
}

// || Operator is a or operator, and checks if either condition is true.
fn or_operator() {
    let first_value: bool = true;
    let second_value: bool = false;
    if first_value || second_value {
        println!("One of the values is true.");
    }
}
