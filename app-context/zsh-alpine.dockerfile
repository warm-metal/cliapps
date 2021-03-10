FROM frapsoft/zsh
ADD entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["zsh", "/usr/local/bin/entrypoint.sh"]
