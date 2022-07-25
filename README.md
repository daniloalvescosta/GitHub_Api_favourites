# **iCertus - Back-End Challenger**
Projeto fullstack que visa o consumo de API do GitHub por meio da linguagem e do framwork Ruby On Rails, tendo a possibilidade de buscar e armazenar repositórios de até 5 linguagens:
 - Ruby
 - Java
 - Python
 - C++
 - Rust

## Como Executar o Código
Clone o repositório:

    git clone https://github.com/daniloalvescosta/iCertus-challenge.git

Vá para a pasta criada:

    cd iCertus-challenge
Execute o Bundle

    Bundle Install
    
 Execute a migração do banco de dados:
 

    rails db:migrate
Execute os testes para garantir que não há nada errado

    rspec
Caso tudo tenha dado certo, pode iniciar o projeto:

    rails server

## Detalhes do Projeto

-   Ruby version: 3.1.2
-   Rails version: 7.0.3
-   Database: PostgreSQL
-   Gems utilizadas: 'HttParty', 'rspec-rails' e 'sassc-rails'
-   Framework Front-End: Bootstrap

## Screenshots
![main page](https://github.com/daniloalvescosta/iCertus-challenge/blob/Master/app/assets/images/repository_shots/home.png)
![list](https://github.com/daniloalvescosta/iCertus-challenge/blob/Master/app/assets/images/repository_shots/listagem.png)
![show page](https://github.com/daniloalvescosta/iCertus-challenge/blob/Master/app/assets/images/repository_shots/show.png)
