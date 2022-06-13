# Desafio Cuco - Versão bloc

Como resposta ao desafio criei esse app utilizando bloc.

## Funcionalidades

Abaixo um pequena diagrama das funcionalidades que deveriam ser implementadas.

<img width="849" alt="Captura de Tela 2022-06-13 às 10 04 12" src="https://user-images.githubusercontent.com/17201784/173360088-25af3043-724b-456c-a583-58b2c073f602.png">

## Arquitetura do App

O app está segregado em camadas, o que nos beneficia quanto:

* Facilidade de manutenção; 
* Testes de forma isolada;
* Mudanças estão contidas, minimizando possíveis impactos;
* Reuso dos componentes/pacotes em outros projetos.

#### Camada de Dados
A camada mais inferior da aplicação e que tem como responsabilidade lidar com operações de obtenção de dados,
como, dados de armazenamento local, comunicação com APIs, etc.

>  Um exemplo de componente dessa camada é o pacote **random_user_api**.

#### Camada de Domínio

A camada de domínio é responsável por interagir com um ou mais componentes da camada de dados para fornecer as informações necessárias para o tomada de decisão (Blocs).  

> Como exemplo de componentes dessa camada temos os pacotes **user_repository** e **friend_repository**.

#### Camada de Aplicação

De uma forma macro, essa camada pode ser subdivida em outras 2 subcamadas:
 * Apresentação
    * Exibe as informações do app e recebe os estimulos do usuário. 
 * Lógica de negócio
    * Essa subcamada é representada pelos Blocs, que reagem ou emitem eventos que cuminam em mudanças na interface/estado da aplicação. Interagem diretamente com a camada de Domínio para obter as informações necessárias.
    * É muito importante frisar que um Bloc nunca deve se comunicar diretamente com outro Bloc, a comunicação deve ser indiretamente através da camada de Domínio ou, em alguns casos excepcionais, na camada de apresentação. 

   

#### Diagrama da aplicação

![desafio](https://user-images.githubusercontent.com/17201784/173256937-70063090-46ff-4504-9d7d-b2c1dbe62cdd.png)


## Dependências

| Nome                 | Descriçao                                                       | Link                                                  |
|----------------------|-----------------------------------------------------------------|-------------------------------------------------------|
| flutter_bloc         | Biblioteca de Widgets que facilitam a implementaçao do bloc     | https://pub.dev/packages/flutter_bloc                 |
| equatable            | Pacote que ajuda na implementaçao de igualdade baseada em valor | https://pub.dev/packages/equatable                    |
| top_snackbar_flutter | Pacote que facilita a exibicao de snackbars customizados        | https://pub.dev/packages/top_snackbar_flutter         |
| connectivity_plus    | Plugin que permite descobrir o estado de conectividade da rede  | https://pub.dev/packages/connectivity_plus            |
| flutter_animator     | Pacote para implementaçao de animaçoes                          | https://pub.dev/packages/flutter_animator             |
| flex_color_scheme    | Pacote com belos temas para Material design                     | https://pub.dev/packages/flex_color_scheme            |
| skeletons            | Pacote para a construçao de skeletons screensskeletons          | https://pub.dev/packages/skeletons                    |
| cached_network_image | Pacote para carregar e armazenar imagens em cache               | https://pub.dev/packages/cached_network_image         |
| path_provider        | Plugin para localizaçao de arquivos no sistema de arquivos      | https://pub.dev/packages/path_provider                |
| json_annotation      | Pacote que facilita a serializacao e deserialiazacao de classes | https://pub.dev/packages/json_annotation              |
| test                 | Biblioteca de testes                                            | https://pub.dev/packages/test#running-tests-on-nodejs |
| mocktail             | Biblioteca que simplifica a criaçao de mocks                    | https://pub.dev/packages/mocktail                     |
| bloc_test            | Pacote que facilita os testes dos Blocs                         | https://pub.dev/packages/bloc_test                    |

## Testes

Testes são fundamentais para qualquer aplicação, por isso eles não devem nunca ser suprimidos. No projeto há testes para as 3 camadas, para facilitar
os testes com os blocs está sendo usado o pacote bloc_test que reduz consideravelmente a complexidade para testá-los. Os testes estão bem superficiais,
mas estão devidamente configurados e funcionais.

## Setup

Não há nenhuma particularidade para executar o app, basta seguir o procedimento usual de baixar as dependências e então executar.

```
flutter pub get 
```

Executando o app

```
flutter run (diretório raíz)
```


## APK

Estou disponibiliznado uma APK para facilitar os testes, [clique aqui para baixar](https://drive.google.com/file/d/1nsCNmuzzjNySEPhzxfH8h8vR4x-Y2uTo/view?usp=sharing).

