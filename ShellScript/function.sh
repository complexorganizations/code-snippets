# Create a simple function
function hello_world() {
  echo "Hello, World"
}

# Run the function
hello_world

# Create a function with arguments
function function_argument() {
  echo "Hello, ${1}"
}

function_argument "World"

# Function with multiple arguments
function function_arguments() {
  echo "Hello, ${1} ${2}"
}

function_arguments "World" "!"