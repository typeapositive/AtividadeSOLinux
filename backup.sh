#!/bin/bash
mkdir -p Backup
cp ../Docs/*.txt Backup/
{
    echo "Backup realizado em: $(date)"
    echo "Arquivos copiados:"
    ls Backup/*.txt
    echo "---------------------------"
} >> backup_log.txt
