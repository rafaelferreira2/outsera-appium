Dado("que acesso a tela de cadastro") do
  @nav.tap_hamburger
  @nav.tap_by_text("FORMS")
  @nav.tap_by_text("CADASTRO")
end

Quando("submeto as informações da pessoa {string}") do |person|
  people = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/users.yml"))
  target_person = people["#{person}"]

  @signup.signup(target_person)
end