set -U fish_greeting ""

alias get_idf ". $HOME/esp/esp-idf/export.fish"

if status is-interactive
    # Commands to run in interactive sessions can go here
end
