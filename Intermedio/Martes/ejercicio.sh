No todo el software que necesitamos se encuentra en los repositorios. Debido a esto, algunas veces debemos descargar el software, realizar un proceso de descompresión y desempaquetado para finalmente instalar la herramienta.
Instalación de algunas herramientas para manejar una base de datos MySQL (recuerda que instalaremos y trabaremos con MySQL en una próxima clase):
sudo apt install build-essential libgd-dev openssl libssl-dev unzip apache2 php gcc libdbi-perl libdbd-mysql-perl

Instalación de Nagios:
wget https://assets.nagios.com/downloads/nagioscore/releases/nagios-4.4.4.tar.gz -O nagioscore.tar.gz

Descomprimir y desempaquetar archivos con tar:
tar xvzf nagioscore.tar.gz

Este comando creará una carpeta nagios-4.4.4. El nombre de la carpeta puede variar dependiendo de la versión que descargaste. Entrando a esta carpeta podemos ejecutar diferentes archivos y comandos para configurar el software y realizar la instalación.
# 1:
sudo ./configure --with-https-conf=/etc/apache2/sites-enabled
# 2:
sudo make all
# 3:
sudo make install
# 4:
sudo make install-init
# 5:
sudo make install-commandmode
# 6:
sudo make install-config
#7:
sudo make install-webconf

sudo useradd -m nagios 

sudo usermod -a -G nagios www-data


Links donde pueden revisar la instalación. 
Y se muestra solucion a algunos problemas que pueden surgirles.
--https://www.unixmen.com/how-to-install-nagios-core-4-1-1-in-ubuntu-15-10/

--https://www.digitalocean.com/community/tutorials/how-to-install-nagios-4-and-monitor-your-servers-on-ubuntu-18-04