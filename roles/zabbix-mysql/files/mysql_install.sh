#!/usr/bin/expect
#
# ##########################################################################
# +----------------------------------------------------------------------+ #
# |                 EMPRESA - LINUX SERVICES                             | #
# +----------------------------------------------------------------------+ #
# |                                                                      | #
# | Nome          : mysql_secure_instalation.exp                         | #
# | Funcao        : Instalacao parametrizacao do MariaDB.                | #
# | Versao        : 1.0                                                  | #
# | Autor         : Jorge Gabriel (Analista de Suporte)                  | #
# | Email         : jorgegabriel.ti@gmail.com                            | #
# | Criacao       : 14-10-2018                                           | #
# | Implementacao : 14-10-2018, Jorge Gabriel                            | #
# | Modificacao   :                                                      | #
# |                                                                      | #
# +----------------------------------------------------------------------+ #
# ##########################################################################

spawn mysql_secure_installation
set timeout 1

# Enter current password for root (enter for none):
expect "%"
send -- " \r"
# Set root password? [Y/n]
expect "%"
send -- "Y \r"
# New password:
expect "%"
send -- "<PASSWORD> \r"
# Re-enter new password:
expect "%"
send -- "<PASSWORD> \r"
# Remove anonymous users? [Y/n]
expect "%"
send -- "Y \r"
# Disallow root login remotely? [Y/n]
expect "%"
send -- "Y \r"
# Remove test database and access to it? [Y/n]
expect "%"
send -- "Y \r"
# Reload privilege tables now? [Y/n]
expect "%"
send -- "Y \r"
expect eof
'
