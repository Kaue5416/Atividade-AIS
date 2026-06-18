# AIS

# Meu Nginx com Docker

## Construir a imagem

```bash
docker build -t meu-nginx .
```

## Executar o container

```bash
docker run -d -p 8081:80 -e APP_NOME="Projeto da Faculdade" -e AUTOR="Kauê" --name novo-site meu-nginx
```

## Acessar

http://localhost:8081
