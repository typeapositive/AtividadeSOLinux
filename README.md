# Atividade 03 — Comandos Linux no Modo Bash

**Disciplina:** Sistemas Operacionais  
**Professor:** MSc. Heleno Cardoso  
**Acadêmica:** Giovanna de Castro  
**Peso:** 2,5  

## Objetivo

Vivenciar o uso prático do shell do Linux (Bash), explorando:

- Comandos básicos  
- Manipulação de arquivos e diretórios  
- Automação com scripts `.sh`  
- Redirecionamento e canalização (pipe)  
- Comandos de rede e diagnóstico  


## 1. Comandos básicos

| Comando | Função |
| `ls` | Lista arquivos e diretórios. |
| `cd` | Muda de diretório. |
| `pwd` | Mostra o caminho atual. |
| `clear` | Limpa o terminal. |
| `echo` | Exibe uma mensagem. |
| `cat` | Mostra o conteúdo de um arquivo. |
| `cp` | Copia arquivos. |
| `mv` | Move ou renomeia arquivos. |
| `rm` | Remove arquivos. |
| `mkdir` | Cria diretórios. |
| `rmdir` | Remove diretórios vazios. |

## 2. Manipulação de diretórios e arquivos


```bash
# criação dos diretórios
mkdir -p ~/ExerciciosSO/Docs
cd ~/ExerciciosSO
mkdir Imagens Scripts

# criação do arquivo texto.txt
echo "Sistemas Operacionais - Aula Prática" > ~/ExerciciosSO/Docs/texto.txt

# cópia com caminho absoluto
cp ~/ExerciciosSO/Docs/texto.txt ~/ExerciciosSO/Scripts/

# cópia com caminho relativo
cd ~/ExerciciosSO/Docs
cp texto.txt ../Scripts/

# movimentação e renomeação
mv ../Scripts/texto.txt ../Imagens/
mv ../Imagens/texto.txt ../Imagens/aula.txt

#!/bin/bash
# mostra data, lista conteúdo e registra saída

date
ls ~/ExerciciosSO/Docs > ~/ExerciciosSO/Scripts/saida.txt
echo "Fim da execução do script" >> ~/ExerciciosSO/Scripts/saida.txt

3. Criação de scripts
Script: meu_script.sh

#!/bin/bash
# mostra data, lista conteúdo e registra saída

date
ls ~/ExerciciosSO/Docs > ~/ExerciciosSO/Scripts/saida.txt
echo "Fim da execução do script" >> ~/ExerciciosSO/Scripts/saida.txt

Execução:

chmod +x backup.sh
./backup.sh
cat ~/ExerciciosSO/Backup/backup_log.txt

4. Redirecionamento e canalização

# criar e ordenar frases
echo -e "banana\nlaranja\nabacate\nuva\nmaçã" > entrada.txt
sort < entrada.txt > ordenado.txt

# listar arquivos .txt
find ~/ExerciciosSO -name "*.txt"

# filtrar arquivos que contêm "aula"
ls -R ~/ExerciciosSO | grep aula

| Comando                                     | Função                                   |
| `ip addr show`                              | Exibe endereços IP da máquina.           |
| `ping -c 4 www.google.com`                  | Testa conectividade.                     |
| `traceroute www.google.com`                 | Mostra a rota até o destino.             |
| `ss -tunlp`                                 | Lista conexões e portas de rede abertas. |
| `scp arquivo.txt usuario@servidor:/destino` | Copia arquivo via SSH.                   |

O uso do terminal (CLI) proporciona mais controle, velocidade e automação, sendo essencial para administração de sistemas e criação de scripts.
Já as interfaces gráficas (GUI), como Nautilus ou Dolphin, são mais intuitivas e ideais para usuários iniciantes.
A prática no Bash fortalece o entendimento do funcionamento do sistema operacional e aumenta a produtividade.
