Dado("que acesso a tela de Login") do
  @nav.tap_hamburger
  @nav.tap_by_text("FORMS")
  @nav.tap_by_text("LOGIN")
end

Quando("submeto minhas credenciais {string}") do |pessoa|
  pessoas = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/users.yml"))
  pessoa_alvo = pessoas["#{pessoa}"]

  @login.sign_in(pessoa_alvo["email"], pessoa_alvo["password"])
end