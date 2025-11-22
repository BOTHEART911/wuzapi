#!/bin/bash

YELLOW='\033[1;33m'
CYAN='\033[1;36m'
GREEN='\033[1;32m'
BOLD='\033[1m'
NC='\033[0m' 
RED='\033[1;31m'

echo ""
echo -e "${CYAN}${BOLD}═══════════════════════════════════════════════════"
echo -e "${GREEN}         ¡Bienvenido a ${BOLD}BOTHEART ACTIONS!${NC}${GREEN} 🚀"
echo -e "${CYAN}═══════════════════════════════════════════════════"

echo -e "${YELLOW}${BOLD}🔄 ESTE PROCESO TARDARA DE 10 A 15 MINUTOS. 🔄${NC}"
echo ""

echo -e "${CYAN}🌐 Página web de compra: ${BOLD}https://www.botheart.com${NC}"
echo -e "${CYAN}▶️ YouTube:   ${BOLD}https://youtube.com/@botheart${NC}"
echo -e "${CYAN}🟡🔵🔴 Whatsapp:    ${BOLD}573103230712${NC}"
echo ""

echo -e "${CYAN}═══════════════════════════════════════════════════${NC}"
echo -e "${RED}${BOLD}⚠️ SI MODIFICAS O COMERCIALIZAS EL PROYECTO ⚠️${NC}"
echo -e "${RED}${BOLD}⚠️ PERDERÁS LA CONEXIÓN, GARANTÍA Y SOPORTE ⚠️${NC}"
echo ""

# Instalar Git y Go
echo "Instalando Git y Go..."
echo ""
pkg install -y git golang &>/dev/null
echo "Git y Go se han instalado correctamente."
echo ""

# Clonar el repositorio de WuzAPI
echo "Clonando el repositorio de BOTHEART..."
echo ""
git clone https://github.com/BOTHEART911/wuzapi.git &>/dev/null
echo "Repositorio clonado con éxito."
echo ""

# Navegar al directorio del proyecto
cd wuzapi

# Compilar el binario de WuzAPI con el nombre por defecto
echo "Compilando el binario..."
echo ""
go build .&>/dev/null

# Verificar que el binario se haya compilado correctamente
if [ -f "./wuzapi" ]; then
    echo "BOTHEART se ha compilado correctamente en Termux."
    
    # Dar permisos de ejecución al binario
    chmod +x wuzapi
    chmod +x ejecutar_wuzapi.sh

    echo "Permisos de ejecución otorgados a BOTHEART."
    echo ""
else
    echo "Error al compilar BOTHEART."
    echo ""
    exit 1
fi
#concediendo permisos a tasker
mkdir -p ~/.termux && echo "allow-external-apps=true" >> ~/.termux/termux.properties

# Ejecutar WuzAPI
echo "Ejecutando BOTHEART..."
echo ""
./wuzapi
