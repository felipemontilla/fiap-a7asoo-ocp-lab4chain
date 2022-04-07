# fiap-a7asoo-ocp-lab4chain
Trabalho da disciplina de Containerization Strategy da Pós de Arquitetura de Soluções da FIAP. Implementação de infraestrutura da API blog-from-image no OpenShift da RedHat.

# Grupo Lab4Chain
Denis Petri - denis_petri@outlook.com

Felipe Marcel Montilla dos Santos - felipe.montilla.s@outlook.com

Italo Rafael de Oliveira Santos - italorafaeldeoliveirasantos@gmail.com

Uderson Luiz Fermino -  uderson@gmail.com

# Arquivos disponibilizados

**deployment/deployment-app.yml** - Arquivo que contém a configuração da aplicação blog-django-py.

**deployment/deployment-db.yml** - Arquivo que contém a configuração do banco de dados sample-database.

**hpa/hpa.yml** - Arquivo que contém as configurações de auto escalabilidada da aplicação.

**pvc/pvc.yml** - Arquivo que contém as configurações do volume persistente do banco de dados.

**route/route.yml** - Arquivo que contém as configurações de rota da aplicação.

**secret/secret-app.yml** - Arquivo que contém as informações de segurança da aplicação.

**secret/secret-db.yml** - Arquivo que contém as informações de segurança do banco de dados.

**service/service-app.yml** - Arquivo que contém as informações dos serviços de mapeamento de porta e endereço da aplicação.

**service/service-db.yml** - Arquivo que contém as informações dos serviços de mapeamento de porta e endereço do banco de dados.

# Projeto do blog GIT

https://github.com/felipemontilla/blog-django-py

# Comandos executados para criação do ambiente

## Criação do projeto
oc new-project fiap-lab4chain-rm342579

## Criação do banco de dados
oc new-app postgresql-persistent --name sample-database --param DATABASE_SERVICE_NAME=sample-database --param POSTGRESQL_USER=sampledb --param POSTGRESQL_PASSWORD=sampledb --param POSTGRESQL_DATABASE=sampledb

