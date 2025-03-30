#language: pt

@cadastro
Funcionalidade: Cadastro

  @cadastro_ok
  Cenario: Cadastro com sucesso
    Dado que acesso a tela de cadastro
    Quando submeto as informações da pessoa <pessoa>
    Então devo ver a notificação "cadastro_sucesso"

    Exemplos:
    | pessoa   |
    | "dev"    |
    | "qa"     |
    | "devops" |
    | "ux"     |

  @campos_obrigatorios
  Cenario: Cadastro com campos em branco
    Dado que acesso a tela de cadastro
    Quando submeto as informações da pessoa <pessoa>
    Então devo ver o alerta <pessoa>

    Exemplos:
    | pessoa           |
    | "nome_vazio"     |
    | "email_vazio"    |
    | "senha_vazia"    |
    | "todos_cadastro" |
