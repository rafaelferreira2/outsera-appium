#language: pt

@login
Funcionalidade: Login

  @login_toast
  Cenario: Login com sucesso
    Dado que acesso a tela de Login
    Quando submeto minhas credenciais <pessoa>
    Então devo ver a notificação <pessoa>

    Exemplos:
    | pessoa           |
    | "login_success"  |
    | "senha_invalida" |

  @login_alert
  Cenario: Login com campos em branco
    Dado que acesso a tela de Login
    Quando submeto minhas credenciais <pessoa>
    Então devo ver o alerta <pessoa>

    Exemplos:
    | pessoa         |
    | "email_vazio"  |
    | "senha_vazia"  |
    | "todos_login"  |
