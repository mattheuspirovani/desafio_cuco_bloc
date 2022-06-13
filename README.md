# Desafio Cuco - Versão bloc

Como resposta ao desafio criei esse app utilizando bloc.

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

| Nome                 | Descriçao                                                       | Link                                          |
|----------------------|-----------------------------------------------------------------|-----------------------------------------------|
| flutter_bloc         | Biblioteca de Widgets que facilitam a implementaçao do bloc     | https://pub.dev/packages/flutter_bloc         |
| equatable            | Pacote que ajuda na implementação de igualdade baseada em valor | https://pub.dev/packages/equatable            |
| top_snackbar_flutter | Pacote que facilita a exibição de snackbars customizados        | https://pub.dev/packages/top_snackbar_flutter |
| connectivity_plus    | Plugin que permite descobrir o estado de conectividade da rede  | https://pub.dev/packages/connectivity_plus    |
| flutter_animator     | Pacote para implementação de animaçoes                          | https://pub.dev/packages/flutter_animator     |
| flex_color_scheme    | Pacote com belos temas para Material design                     | https://pub.dev/packages/flex_color_scheme    |
| skeletons            | Pacote para a construção de skeletons screensskeletons          | https://pub.dev/packages/skeletons            |
| cached_network_image | Pacote para carregar e armazenar imagens em cache               | https://pub.dev/packages/cached_network_image |
| path_provider        | Plugin para facilitar a interação com o sistema de arquivos      | https://pub.dev/packages/path_provider        |

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

