#language: pt

@botoes
Funcionalidade: Botões

  @clique
  Cenario: Clique simples
    Dado que acesso a tela de clique simples
    Quando eu clico no botão de clique simples
    Então devo ver a notificação "short_click"

  @clique_longo
  Cenario: Clique longo
    Dado que acesso a tela de clique longo
    Quando eu pressiono o botão de clique longo
    Então o botão deve apresentar o texto "long_click"