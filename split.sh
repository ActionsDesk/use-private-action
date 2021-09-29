#!/usr/bin/env bash
read -d '' INPUT_VARIABLES <<EOF
username: bassem
 some other variable: lorem ipsum
password: 12345678
thirdvariable:44124124
EOF
# Split $INPUT by newline
readarray -t INPUT_ARRAY <<<"${INPUT_VARIABLES}"
# Print the array
for i in "${INPUT_ARRAY[@]}"; do
  # split the variable $i by colon
  IFS=":" read -ra KEY_VALUES <<< "${i// /}"
  # Print the variable name and value
  echo "INPUT_${KEY_VALUES[0]^^}"="${KEY_VALUES[1]}"
  # uppercase the variable name
  export "INPUT_${KEY_VALUES[0]^^}"="${KEY_VALUES[1]}"
done