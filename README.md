# Docker basics.

We are gogint to create a load balancer with multiple containers and one network.

We are using nginx.

## Basics.

```
🐳🐳🐳🐳🐳 Docker basics 🐳🐳🐳🐳🐳🐳

>> docker ps
=> EN
  => You can see the state of running containers.
=> ES
  => Estado de contenedores docker en ejecución.

>> docker ps -a
=> EN
  => You can see the state of running containers and not running containers.
=> ES
  => El estado de contenedores incluyendo los que no estan en ejecución.

>> docker inspect [id] or [name]
=> EN
  => Shows the metadata in a specific container by id.
  => Really important in development if you want to see the env vars.
=> ES
  => Muestra la metada del contenedor.
  => Muy importante al desarrollar y querer por ejemplo obtener un variable de entorno.

>> docker inspect -f '{{ json .Config.Env }}' [id] or [name]
=> EN
  => Filtered metadata and parsed to json.
  => The filter format is in GO, Docker was made in GO.
=> ES
  => Metadata filtrada y parseada a json
  => El formato del filtro es Go, docker esta hecho en Go.
  => json significa el format que le quiero hacer.
  => El .Config.Env significa las variables que busco.

>> docker rename [old_name] [new_name]
=> EN
  => Rename a container.
=> ES
  => Renombra un contenedor

>> docker run --name [new_name] [imagen]
=> EN
  => Rename and run the container.
  => The flag --mame allow us to change the starting name.
=> ES
  => Renombra y corre la imagen hello-world
  => La bandera --name nos permite colocar un nombre de entrada.

>> docker logs [id] or [name]
=> EN
  => Showing the logs by container's id or name.
  => Show logs does not exec egaint the container.

>> docker logs hola-mundo
  => ES
  => Muestra los logs pero no ejecuta de nuevo el contenedor.

>> docker rm [id] or [name]
=> EN
  => It deletes a container by name or id.
  => ES
  => Elimina un contenedor

>> docker ps -aq
=> EN
  => It only shows the containe's ids.
=> ES
  => Muestra unicamente los ids de los contenedores.

>> docker rm $(docker ps -aq)
=> EN
  => You can delete all containers in bash.
=> ES
  => Elimina una lista de contenedores por id

>> docker run ubuntu
=> EN
  => It only download the ubuntu image from dockerhub.
  => After that just ran /bin/bash
=> ES
  => se descarga la imagen de ubuntu.
  => solo corrio /bin/bash

>> docker run -it ubuntu
=> EN
  => -it allow us to comunicate our bash terminal with the container's terminal.
  => -it minds interactive terminal. 
=> ES
  => -it Me deja la terminar del contenedor abierta en mi bash.
  => Ahora quedamos en ubuntu.

🐳🐳🐳🐳🐳
Live cycle in containers:
Ciclo de vida de un contenedor:
🐳🐳🐳🐳🐳

>> docker run ubuntu tail -f /dev/null
=> EN
  => Create a container widthout shoutdown.
=> ES
  => Crear un contenedor que no se apague.

>> docker rm -f [id container]
=> EN
  => One container just shitdown if:
  => The user root is broken or it finished the work to done.
=> ES
  => Un contenedor solo se apaga si su comando
  => root deja de funcionar o termina lo
  => que debia hacer.

>> docker run -d --name server nginx
=> EN
  => The flag -d minds detach terminal.
=> ES
  => Decimos --detach(-d) si esto tiene
  => output, no quiero estar atachado a el.

>> docker run -d --name server -p 8080:80 nginx
=> EN
  => The flag -p minds publisher.
  => It help us to publish one port in our machine and connect it with
  => the another container's port.
  => 8080 port in my host.
  => 80 port in my container.
=> ES
  => La bandera -p Significa publisher
  => Sirve para publicar un puerto de mi
  => maquina y conectarlo con el del contenedor
  => 8080 significa mi host
  => 80 significa el puesto del contenedor

=> EN
  => If we run localhost:8080 in the browser.
  => We can see our nginx.
=> ES
  => Si corremos localhost:8080 en el navegador
  => podremos ver nuestro nginx

>> docker run -d --name db mongo
=> EN
  => Running a database.
=> ES
  Corriendo una base de datos.

```
