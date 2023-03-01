fn main() {
    // == Operator checks if two things are equal.
    equals_operator();
    // != Operator checks if two things are not equal.
    not_equals();
    // && Operator is a and operator, and checks if both conditions are true.
    and_operator();
    // || Operator is a or operator, and checks if either condition is true.
    or_operator();
    // < Operator checks if the first value is less than the second value.
    less_than();
    // > Operator checks if the first value is more than the second value.
    more_than();
    // =< Operator checks if the first value is less than or equal to second value.
    less_than_or_equal_to();
    // >= Operator checks if the first value is more than or equal to second value.
    more_than_or_equal_to();
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

// < Operator checks if the first value is less than the second value.
fn less_than() {
    let first_value: i32 = 1;
    let second_value: i32 = 2;
    if first_value < second_value {
        println!("The first value is less than the second value.");
    }
}

// > Operator checks if the first value is more than the second value.
fn more_than() {
    let first_value: i32 = 1;
    let second_value: i32 = 2;
    if first_value > second_value {
        println!("The first value is more than the second value.");
    }
}

// =< Operator checks if the first value is less than or equal to second value.
fn less_than_or_equal_to() {
    let first_value: i32 = 1;
    let second_value: i32 = 2;
    if first_value <= second_value {
        println!("The first value is less than or equal to the second value.");
    }
}

// >= Operator checks if the first value is more than or equal to second value.
fn more_than_or_equal_to() {
    let first_value: i32 = 1;
    let second_value: i32 = 2;
    if first_value >= second_value {
        println!("The first value is more than or equal to the second value.");
    }
}
