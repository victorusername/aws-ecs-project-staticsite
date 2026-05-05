FROM nginx:alpine
# Usando uma imagem oficial e menor do nginx

RUN rm -rf /usr/share/nginx/html/*
#Remove a página default inicial do Nginx

COPY index.html /usr/share/nginx/html/
#Copia a pagina do projeto

EXPOSE 80
# Faz o exposed da porta 80, a mesma que vamos utilizar no LB.

CMD ["nginx", "-g", "daemon off;"]
# Inicia o Nginx em foreground (primeiro plano)