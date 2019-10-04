# Serving static and NodeJS application with Caddy

Caddy is the HTTP/2 web server with automatic HTTPS. For more details; [Caddy Offical Web Site](https://caddyserver.com/)

Follow the white rabbit:

- Build your image

  `docker build -t selcukusta/caddy-sample:1.0.0`

- Run your container

  `docker container run --name sample -d -p 8080:80 -p 8081:81 selcukusta/caddy-sample:1.0.0`

- Check static web site output

  `curl localhost:8080` > `<h1>Merhaba Dünya!</h1>`

- Check nodeJS application output

  `curl localhost:8081` > `[RSS OUTPUT]`
