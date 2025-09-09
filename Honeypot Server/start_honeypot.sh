# Simple script to start the honeypot server, assuming opencanary is installed
# and configured properly.

export PATH=$PATH:$HOME/bin
opencanaryd --start --uid=nobody --gid=10