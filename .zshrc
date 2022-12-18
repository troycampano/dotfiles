eval "$(starship init zsh)"
alias ls='ls --color'

function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

alias pip=pip3

function csvp {
    column -t -s, -n "$@" | less -F -S -X -K
}

