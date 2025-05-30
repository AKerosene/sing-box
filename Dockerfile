FROM ghcr.io/sagernet/sing-box:latest

# Копируем ваш конфиг
COPY config.json /etc/sing-box/config.json

# Используем встроенный ENTRYPOINT, передаём только аргументы
CMD ["-C", "/etc/sing-box", "-D", "/var/lib/sing-box", "run"]
