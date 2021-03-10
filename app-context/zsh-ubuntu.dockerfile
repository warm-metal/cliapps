FROM zshusers/zsh:5.8
ADD entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["zsh", "/usr/local/bin/entrypoint.sh"]
