# Docker and DockerHub

В рамках задания был подготовлен стенд, с установленым docker.  
На стенде подготовил docker image nginx на основе дистрибутива 1.25.3-alpine-slim и выложил его на dockerhub.  
Для успешного запуска контейнера из данного образа, необходимо воспользоваться командой "docker pull kronalf/otus:1.25.3-alpine-slim".  
По завершению скачивания образа, его необходимо запустить командой "sudo docker run -it -p 8080:80 -d kronalf/otus:1.25.3-alpine-slim".  
Проверить, что контейнер запущен можно командой "docker ps"