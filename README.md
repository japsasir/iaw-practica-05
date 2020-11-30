# iaw-practica-05
Práctica cinco de la asignatura IAW de 2º de Asir.

> IES Celia Viñas (Almería) - Curso 2020/2021
Módulo: IAW - Implantación de Aplicaciones Web
Ciclo: CFGS Administración de Sistemas Informáticos en Red

**Archivos en el repositorio**
------------
1. front_end.sh—Script de bash para instalar los elementos en el servidor front-end. Carpeta diferenciada.
2. back_end.sh-Script de bash para instalar los elementos en el servidor back-end. Carpeta diferenciada.
3. load_balancer.sh-Script de bash para desplegar el balanceador de carga vía proxy inverso.
3. 000-default.conf—Archivo de configuración para Apache. Hemos añadido las directivas Proxy y ProxyPass. Hay que añadir las IP de los dos servidores Front en el archivo.
4. README.md—Enlace para repositorio.

**Pasos seguidos**
Seguir el orden para evitar confusiones.

- Desplegamos la máquina back_end.
- Montamos dos máquinas front end, que apuntarán a la ip privada de la máquina back-end. Hay que modificar `/var/www/html/index.php` para indicar en que frontal estamos, guardar la edición y reiniciar apache2. En mi práctica, he elegido usar  `<p class="lead">Front_end_1</p>` como prueba.
- Despues, montamos una cuarta máquina que actuará de balanceador de carga. En ella, deberemos especificar las IP privadas de nuestras dos máquinas front_end en nuestro archivo `000-default.conf` antes de lanzar el script.