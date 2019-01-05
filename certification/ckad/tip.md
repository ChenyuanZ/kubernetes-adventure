# Tip

## General
* `alias k=kubectl`: save typing time.
* `k apply -f <filename>`: works for both create & update


## Debug

### Use Custom Command

Use Custom Command to keep container running for investigation.

* Set `pod.spec.containers.command` to `["/bin/sh"]`
* Set `pod.spec.containers.args` to `["-c", "while true; do date; sleep 5; done"]`


## Vim

* Copy & paste
  * position the cursor where you want to begin copying/cutting
  * press `v` to select characters (or `V` to select whole lines)
  * move cursor to the end of what you want to cut
  * press `d` to cut (or `y` to copy)
  * move to where you would like to paste
  * press `P` to paste before the cursor (or `p` to paste after)
* Replace: `:%s/foo/bar/g`
* Count: `:%s/foo//gn`
* Insert at the beginning or ending of multi-lines
  * press `Esc` to enter command mode
  * use `Ctrl` + `V` to enter visual block mode
  * move `Up`/`Down` to select the columns of text in the lines you want to edit
  * (press `$` if you want to append to the end)
  * hit `Shift` + `i` and type the text you want to insert
  * Hit `Esc`, wait 1 second and the inserted text will appear on every line.


## tmux
* create session: `tmux new -s foo`
* detach session: `tmux detach`
* attach session: `tmux attach -t foo`
* list session: `tmux ls`
* kill session: `tmux kill-session -t foo`


# Reference
* http://hyperpolyglot.org/multiplexers
