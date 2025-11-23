# Launch TMUX on terminal startup
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  tmux attach-session -t main || tmux new-session -s main
fi
#---------------------------
# #[ Wayvibes ]
if command -v wayvibes >/dev/null 2>&1; then
  if ! pgrep -x "wayvibes" >/dev/null; then
    wayvibes --device
    wayvibes ~/.config/key-sounds/akko_lavender_purples -v 6 --background
  fi
fi
#---------------------------
