VALUE="1"

# if statement
if [ "${VALUE}" == "1" ]; then
  echo true
fi

# if / else statement
if [ "${VALUE}" == "1" ]; then
  echo true
else
  echo false
fi

# if / elif statement
if [ "${VALUE}" == "1" ]; then
  echo true
else if [ "${VALUE}" == "2" ]; then
  echo false
fi

# if / elif / else
if [ "${VALUE}" == "1" ]; then
  echo true
else if [ "${VALUE}" == "2" ]; then
  echo false
else [ "${VALUE}" == "1" ]; then
  echo false
fi
