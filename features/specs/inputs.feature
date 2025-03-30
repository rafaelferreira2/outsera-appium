#language: pt

@inputs
Funcionalidade: Inputs

  @checkbox
  Cenario: Checkbox
    Dado que acesso a tela Botões de Checkbox
    Quando eu marco as opções <opcao1> e <opcao2>
    Então as opções <opcao1> e <opcao2> devem ser marcadas

    Exemplos:
    | opcao1       | opcao2  |
    | "Python"     | "Cobol" |
    | "Java"       | "Ruby"  |
    | "Robot"      | "C#"    |
    | "Javascript" | "Java"  |

  @checkbox2
  Cenario: Checkbox 2
    Dado que acesso a tela Botões de Checkbox
    Quando eu marco as seguintes opções:
      | opcao           |
      | Ruby            |
      | Python          |
      | Java            |
      | Javascript      |
      | C#              |
      | Robot Framework |
    Então todas essas opções deve estar marcadas

  @radio
  Cenario: Radio Button
    Dado que acesso a tela Botões de Radio
    Quando eu escolho a opção <opcao>
    Então esta <opcao> deve ser marcada

    Exemplos:
    | opcao        |
    | "Java"       |
    | "C#"         |
    | "Ruby"       |
    | "Python"     |
    | "Javascript" |
    | "Elixir"     |
    | "Go Lang"    |