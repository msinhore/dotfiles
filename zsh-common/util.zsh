
command_exist() {
  local command="$1"
  command -v "$command" > /dev/null 2> /dev/null
  return $?
}
