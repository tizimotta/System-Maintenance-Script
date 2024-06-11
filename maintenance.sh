#!/bin/bash

# Colors for output
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No color


function zzz() {

    echo -e "${YELLOW}\n[*] Cleaning temporary files...${NC}"

    # Check if /tmp exists
    for dir in /tmp; do
        if [ -d "$dir" ]; then
            # Delete temporary files, redirecting error messages to /dev/null
            find "$dir" -type f -delete 2>/dev/null
            echo -e "${GREEN}[+] Temporary files deleted in $dir.${NC}"
        else
            echo -e "${RED}\n[!] Error: $dir directory not found.${NC}"
        fi
    done

    # Cleaning package cache
    echo -e "${YELLOW}\n[*] Cleaning package cache...${NC}"
    sudo apt-get clean && sudo apt-get autoclean
    echo -e "${GREEN}[+] Package cache cleaned.${NC}"

    # Removing unnecessary packages
    echo -e "${YELLOW}\n[*] Removing unnecessary packages...${NC}"
    sudo apt-get autoremove -y
    echo -e "${GREEN}[+] Unnecessary packages removed.${NC}"

    echo -e "${YELLOW}\n[*] Updating system...${NC}"
    sudo apt update && sudo apt upgrade -y

    if [ $? -eq 0 ]; then
        echo -e "${GREEN}[+] System updated successfully.${NC}"
    else
        echo -e "${RED}\n[!] Error: System update failed.${NC}"
    fi

}
