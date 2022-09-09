alias ls='ls -F'
alias ll='ls -lh'
alias reload='source ~/.zshrc'

cg() {
  cd "./$(git rev-parse --show-cdup 2>/dev/null)" 2>/dev/null
}

clone() {
  git clone $@
  if [ "$2" ]; then
    cd "$2"
  else
    cd $(basename "$1" .git)
  fi
  if [[ -r "./yarn.lock" ]]; then
    yarn
  elif [[ -r "./package-lock.json" ]]; then
    npm install
  fi
}