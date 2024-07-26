#!/bin/bash

# Kopiowanie skryptu do lokalizacji /usr/local/bin
cp restart_rtl_tcp.sh /usr/local/bin/restart_rtl_tcp.sh

# Ustawienie uprawnień do wykonywania skryptu
chmod +x /usr/local/bin/restart_rtl_tcp.sh

# Kopiowanie pliku usługi do katalogu systemd
cp welle.service /etc/systemd/system/welle.service

# Przeładowanie konfiguracji systemd
sudo systemctl daemon-reload

# Uruchomienie usługi
sudo systemctl start welle.service

# Sprawdzenie statusu usługi
sudo systemctl status welle.service

# Włączenie usługi przy starcie systemu
sudo systemctl enable welle.service
