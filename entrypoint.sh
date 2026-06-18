#!/bin/sh

echo "Iniciando aplicação..."

# Variável de ambiente
APP_NOME=${APP_NOME:-"Aplicação Padrão"}
AUTOR=${AUTOR:-"Administrador"}

# Cria a página HTML usando a variável
cat > /usr/share/nginx/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>$APP_NOME</title>
</head>
<body>
    <h1>Bem-vindo ao $APP_NOME</h1>
    <p>Desenvolvido por $AUTOR</p>
    <p>Servidor Nginx executando dentro de um container Docker.</p>
</body>
</html>
EOF

echo "Aplicação iniciada com o nome: $APP_NOME"

# Inicia o Nginx
exec nginx -g "daemon off;"