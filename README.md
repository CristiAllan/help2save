#Help2Save!

## O que é o projeto?
Um web-app que permite que instituições sociais divulguem suas vagas de trabalhos. Os voluntários podem procurar por projetos de acordo com suas habilidades, tipo de trabalho e localidade, e assim candidatarem-se às vagas oferecidas.

----
## Objetivo
Aproximar pessoas que querem desenvolver um trabalho voluntário com as instituições que necessitam de pessoas com essa iniciativa. 

O uso dessa plataforma pelas instituições é uma forma de ampliar a divulgação dos seus projetos e despertar interesse de novos voluntários, esses por sinal terão a oportunidade de encontrar trabalhos que estejam de acordo com suas habilidades e localidade além de ser uma possibilidade de mostrar que estão integrados em algum tipo de projeto social.

----
## Como funciona?
Instituições possuem um perfil onde podem cadastrar trabalhos que necessitam, o perfil poderá ser visualizado e receber pedidos de voluntariado para cada trabalho.

Os pedidos de voluntariado devem vir com a carta de apresentação do candidato podem ser aceitos ou rejeitados, cabe a instituição avaliá-los, uma das formas é através do perfil do voluntário, neste consta o histórico de projetos que ele já participou e/ou participa e também *reviews* com *feedbacks* de diversas instituições que conhecem seu trabalho. Da mesma forma os voluntários também podem fazer *reviews* sobre instituições que já trabalharam ou trabalham.

----

## Tecnologias utilizadas:

* Ruby 2.3.
* Rails 5.0.2.
* Docker/Docker-compose.

----

## Depêndencias:

* [Instalando docker Community Edition](https://docs.docker.com/engine/installation/)
* [Instalando docker-compose.](https://www.digitalocean.com/community/tutorials/how-to-install-docker-compose-on-ubuntu-16-04)

### Após instalar as depêndencias á cima, rodar os comando listados abaixo:

    $ docker-compose build
    $ docker-compose run --rm website bundle exec rake db:create
    $ docker-compose up

----


