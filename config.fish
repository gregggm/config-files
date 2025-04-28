fish_vi_key_bindings
set -g fish_prompt_pwd_dir_length 0
# set -g theme_short_path yes

set fish_color_cwd yellow
set fish_color_search_match --background='grey'

# git
abbr --add -g gp "git push origin HEAD"
abbr --add -g gc "git commit"
abbr --add -g gcm "git commit -m"
abbr --add -g gcn "git commit -n"
abbr --add -g gcw 'git commit -m "WIP" -n'
abbr --add -g gca "git commit --amend"
abbr --add -g gcan "git commit --amend --no-edit"
abbr --add -g gcf "git commit --fixup"
abbr --add -g gs "git switch"
abbr --add -g gsc "git switch -c"
abbr --add -g gsd "git switch -d"
abbr --add -g gst "git status --short"
abbr --add -g gmb "git merge-base"
abbr --add -g gr "git rebase -i"
abbr --add -g gri "git rebase -i"
abbr --add -g grc "git rebase --continue"
abbr --add -g gra "git rebase --abort"
abbr --add -g gl "git log"
abbr --add -g glo "git log --oneline -10"
abbr --add -g glm "git log --first-parent --oneline"
abbr --add -g glt "git log --no-walk --tags --oneline"
abbr --add -g glg "git log --graph --all --topo-order --oneline"
abbr --add -g gsl "git stash list"
abbr --add -g gsp "git stash push -m"
abbr --add -g gsa "git stash apply"
abbr --add -g gb "git branch"
abbr --add -g grmb "git reset (git merge-base HEAD origin/master)"
# git machete
abbr --add -g gm "git machete"
abbr --add -g gms "git machete status"
abbr --add -g gmu "git machete update"
abbr --add -g gmt "git machete traverse --yes --list-commits --whole"
abbr --add -g gmtp "git machete traverse --yes --list-commits --whole --push"
abbr --add -g gmr "git machete reapply"
abbr --add -g gme "git machete edit"
abbr --add -g gmd "git machete discover"
abbr --add -g gmgd "git machete go down"
abbr --add -g gmgu "git machete go up"

abbr --add -g dc "docker compose"
abbr --add -g m make
abbr --add -g j just

# python
set -gx PIP_REQUIRE_VIRTUALENV true
# pyenv init
set -gx PYENV_ROOT $HOME/.pyenv
pyenv init - | source
# direnv init
direnv hook fish | source
# fnm init
fnm env | source

# Add kraken-db-tools to PATH
fish_add_path --append --path ~/Workspace/kraken-db-tools/.direnv/python-3.11.2/bin
set -gx KRAKEN_DB_PG_CLIENT pgcli
