# set theme_short_path yes
fish_vi_key_bindings
set -Ux EDITOR vi
set -g fish_prompt_pwd_dir_length 0
# set -g theme_short_path yes
set fish_color_search_match --background='grey'


abbr --add -g gp "git push origin HEAD"
abbr --add -g gc "git commit"
abbr --add -g gcm "git commit -m"
abbr --add -g gca "git commit --amend"
abbr --add -g gcan "git commit --amend --no-edit"
abbr --add -g gcf "git commit --fixup"
abbr --add -g gs "git status --short"
abbr --add -g gmb "git merge-base --fork-point"
abbr --add -g gr "git rebase -i"
abbr --add -g gri "git rebase -i"
abbr --add -g glo "git log --oneline -10"
abbr --add -g glg "git log --graph --all --oneline"
abbr --add -g gsl "git stash list"
abbr --add -g gsp "git stash push -m"
abbr --add -g gsa "git stash apply"

abbr --add -g dc "docker compose"
abbr --add -g m make

# Python
set -gx PIP_REQUIRE_VIRTUALENV true
# pyenv init
status is-interactive; and pyenv init --path | source
pyenv init - | source

direnv hook fish | source