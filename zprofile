export DOTFILES_ROOT="$HOME/.dotfiles"

for file in "$DOTFILES_ROOT"/functions/*; do
  source "$file"
done

for file in "$DOTFILES_ROOT"/zprofile.d/*; do
  source "$file"
done

if command_exist screen; then
  if [[ -n $SSH_CONNECTION && "$(screen -ls | grep -c '\(Detached\)')" -eq 1 ]]; then
    screen -r
  else
    screen -ls
  fi
fi
