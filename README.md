# NASA Lens SwiftUI

NASA Lens é um aplicativo iOS desenvolvido em SwiftUI que utiliza a API da NASA para exibir fotos capturadas pelo rover Curiosity em Marte. Os usuários podem explorar imagens do rover, visualizar detalhes sobre a câmera utilizada e navegar entre telas para ver mais informações detalhadas de cada foto, além de acessar dados sobre asteroides próximos da Terra.

| Fotos do dia | Fotos de Marte | Detalhes de Marte | Asteroides próximos da Terra |
|:-------------------------:|:-----------------:|:----------------:|:-------------:|
| <img src="https://i.imgur.com/4oy2yMY.png" width="200"/> | <img src="https://i.imgur.com/wlkc5ND.png" width="200"/> | <img src="https://i.imgur.com/yDA46Xu.png" width="200"/> | <img src="https://i.imgur.com/2vbCegn.png" width="200"/> |


## Funcionalidades

- **Exploração de Fotos**: Listagem de fotos tiradas pelo rover Curiosity.
- **Detalhes das Imagens**: Visualização detalhada com informações da câmera e data.
- **Navegação Intuitiva**: Interface fluida entre as telas com SwiftUI.
- **Carregamento de Imagens**: Carregamento assíncrono com placeholders.
- **Visualização de Asteroides**: Informações sobre asteroides próximos à Terra.
- **Imagem do Dia**: Exibição da imagem astronômica do dia.

## Requisitos

- iOS 14.0 ou superior
- Xcode 14.0 ou superior
- Swift 5.7 ou superior

## Instalação

1. Clone o repositório:

```bash
git clone https://github.com/seu_usuario/NASA-Lens.git
```

2. Abra o projeto no Xcode:

3. No arquivo `Constants.swift`, adicione sua chave da API da NASA:

```swift
struct Constants {
    static let API = "SUA_API_KEY_AQUI"
}
```

4. Compile e execute o app.

## Tecnologias Utilizadas

- **SwiftUI**: Interface declarativa e moderna para iOS.
- **NASA API**: Fonte dos dados e imagens do rover Curiosity.
- **URLSession**: Comunicação com a API e gerenciamento de dados.

## Arquitetura

O projeto segue a arquitetura MVVM (Model-View-ViewModel):

- **Model**: Representa os dados principais como `MarsRoverPhoto`, `Rover`, e `Camera`.
- **View**: Componentes visuais construídos com SwiftUI.
- **ViewModel**: Responsável pela lógica de negócios e integração com os modelos.
- **Service**: Manipulação de requisições HTTP e comunicação com a API da NASA.

## Telas do Aplicativo

### APOD

- **Descrição**: Tela que exibe a imagem astronômica do dia.
- **Funcionalidade**: Mostra a imagem com suas respectivas informações.

### MarsRover

- **Descrição**: Exibe uma galeria de fotos do rover Curiosity.
- **Funcionalidade**: Permite a navegação entre as fotos com detalhes.

### Asteroid

- **Descrição**: Lista os asteroides próximos da Terra.
- **Funcionalidade**: Oferece informações detalhadas sobre cada asteroide.

## Estrutura de Arquivos

```bash
├── NASA Lens/
│   ├── APOD/
│   │   ├── Model/
│   │   ├── View/
│   │   ├── ViewModel/
│   ├── Asteroid/
│   │   ├── Model/
│   │   ├── View/
│   │   ├── ViewModel/
│   ├── MarsRover/
│   │   ├── Model/
│   │   ├── View/
│   │   ├── ViewModel/
│   ├── Service/
│   ├── Source/
```
