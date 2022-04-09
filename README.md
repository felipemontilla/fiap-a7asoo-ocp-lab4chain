# fiap-a7asoo-ocp-lab4chain
Trabalho da disciplina de Containerization Strategy da Pós de Arquitetura de Soluções da FIAP. Implementação de infraestrutura da API blog-from-image no OpenShift da RedHat.

# Grupo Lab4Chain
Denis Petri - denis_petri@outlook.com

Felipe Marcel Montilla dos Santos - felipe.montilla.s@outlook.com

Italo Rafael de Oliveira Santos - italorafaeldeoliveirasantos@gmail.com

Uderson Luiz Fermino -  uderson@gmail.com


# Entrega

## Entrega 1

- **Dockerfile**: O arquivo `Dockerfile` presente na raíz, para fazer o 
build da imagem basta rodar o comando no diretório raiz e executar o comando docker run
```
$ docker build -t nginx:1.21.6-alpine-7ASOO_group5 .
$ docker run -ti -p 80:80 nginx:1.21.6-alpine-group5
```

## Entrega 2
- **Camada de persistência (pvc)**: PVC gera um storage e pode ser usado quando é necessário persistir dados, como neste caso estamos deployando um db, é necessário persistir os dados gravados, para deploy basta executar o comando do diretório raíz `kubectl apply -f ./pvc/sample-database.pvc.yaml`
- **Deploy de banco de dados**: O db usado sera o Postgre, para deploy basta executar o comando do diretório raíz `kubectl apply -f ./deployment-config/sample-database.deployment-config.yaml`
- **Deploy da aplicação**: Aplicação escolhida foi blog-django, para deploy basta executar o comando do diretório raíz `kubectl apply -f ./deployment/blog.deployment.yaml`
- **Services**: Antes de criar uma rota (ingress) é necessário criar um service, para deploy basta executar o comando do diretório raíz 
```
kubectl apply -f ./service/blog.service.yaml
kubectl apply -f ./service/sample-database.service.yaml
```
- **Rota (ingress)**: Por fim podemos criar nossa rota, para deploy basta executar o comando do diretório raíz `kubectl apply -f ./route/blog.route.yaml`


## Entrega 3
- **Deploy secrets do db e aplicação**: Secrets possui informações sensíveis como nome de usuários e senha, necessários para deploy do db e aplicação, para deploy basta executar o comando do diretório raíz 
```
kubectl apply -f ./secret/blog.secret.yaml
kubectl apply -f ./sample-database.secret.yaml
```
- **Deploy configmap da aplicação**: Configmap possui algumas variáveis usadas pela aplicação, para deploy basta executar o comando do diretório raíz `kubectl apply -f ./configmap/blog.config.yaml`
- **HPA**: HPA é responsável por escalar a quantidade de pods baseado em alguma métrica, para deploy basta executar o comando do diretório raíz `kubectl apply -f ./hpa/blog.hpa.yaml`


# Projeto do blog GIT
https://github.com/felipemontilla/blog-django-py


# Build
Como o blog-django é baseado em um projeto GIT, configuramos uma estratégia de CI, para fazer o build automatizado da imagem de container que usaremos para o deploy da aplicação, para isso temos os seguintes recursos.
- **Image ImageStream**: Image Stream é usado como uma abstração para o repositório de imagens, para deploy basta executar o comando do diretório raíz `kubectl apply -f ./build/blog.imagestream.yaml`
- **BuildConfig**: Aqui configuramos as triggers que usaremos para começar um processo de build, para deploy basta executar o comando do diretório raíz `kubectl apply -f ./build/blog.buildconfig.yaml`


# Comandos executados para criação do ambiente
Criação do projeto
`oc new-project fiap-lab4chain-7asoo-group5`
