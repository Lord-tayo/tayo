#!/bin/bash

# Banner كبير بالانجليزي
echo "████████╗ █████╗ ██╗   ██╗ ██████╗ "
echo "╚══██╔══╝██╔══██╗╚██╗ ██╔╝██╔═══██╗"
echo "   ██║   ███████║ ╚████╔╝ ██║   ██║"
echo "   ██║   ██╔══██║  ╚██╔╝  ██║   ██║"
echo "   ██║   ██║  ██║   ██║   ╚██████╔╝"
echo "   ╚═╝   ╚═╝  ╚═╝   ╚═╝    ╚═════╝ "
echo "      Tayo Network Scanner v2.0     "
echo "      Made by Lord | Use Legally    "
echo "===================================="

# نطلب IP من اليوزر
echo ""
read -p "Enter Target IP/Network: " target

# نتأكد انه كتب حاجة
if [ -z "$target" ]; then
    echo "[!] Error: You must enter an IP"
    exit 1
fi

echo ""
echo "[+] Starting Scan on: $target"
echo "===================================="

# نعمل فحص سريع بـ nmap
nmap -sP $target

echo ""
echo "[+] Scan Complete"
echo "===================================="
