#!/bin/bash
echo "##### ESTE PROCESO TARDARA ENTRE 15 A 20 MINUTOS #####"

# Instalar Git y Go
echo "Instalando Git y Go..."
pkg install -y git golang &>/dev/null
echo "Git y Go se han instalado correctamente."

# Clonar el repositorio de WuzAPI
echo "Clonando el repositorio de BOTHEART..."
git clone https://github.com/davidtchdev/wuzapi.git &>/dev/null
echo "Repositorio clonado con éxito."

# Navegar al directorio del proyecto
cd wuzapi

# Compilar el binario de WuzAPI con el nombre por defecto
echo "Compilando el binario..."
go build .&>/dev/null

# Verificar que el binario se haya compilado correctamente
if [ -f "./wuzapi" ]; then
    echo "BOTHEART se ha compilado correctamente en Termux."
    
    # Dar permisos de ejecución al binario
    chmod +x wuzapi
    chmod +x ejecutar_wuzapi.sh

    echo "Permisos de ejecución otorgados a BOTHEART."
else
    echo "Error al compilar BOTHEART."
    exit 1
fi
#concediendo permisos a tasker
mkdir -p ~/.termux && echo "allow-external-apps=true" >> ~/.termux/termux.properties

# Ejecutar WuzAPI
echo "Ejecutando BOTHEART..."
./wuzapi
