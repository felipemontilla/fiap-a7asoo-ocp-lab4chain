# fiap-a7asoo-ocp-lab4chain
Trabalho da disciplina de Containerization Strategy da Pós de Arquitetura de Soluções da FIAP. Implementação de infraestrutura da API blog-from-image no OpenShift da RedHat.

# Entrega

## Entrega 1

- **Dockerfile**: O arquivo `Dockerfile` presente na raíz

# Dicas e comandos úteis

## Build da imagem docker presente na primeira entrega
Executar o comando `$# docker build -t nginx:1.21.6-alpine-group5 .` do diretório raíz

## Rodando localmente a imagem docker que fizemos o build
`$# docker run -d -p 80:80 nginx:1.21.6-alpine-group5`
Para testar o funcionamento podemos executar o comando `$# curl http://localhost:80`
