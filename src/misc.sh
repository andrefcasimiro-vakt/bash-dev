_auto_brew() {

  declare -A deps
  deps=(
    ["mysql"]=$(which mysql 1>/dev/null; echo $?)
  )

  for dep in "${!deps[@]}";
    do
      if [[ ${deps[${dep}]} == 1 ]];
        then
          echo "Installing" ${dep}
          brew install ${dep};
      fi
  done
}
