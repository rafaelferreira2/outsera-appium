Dado('que acesso a tela de clique simples') do
  @nav.tap_hamburger
  @nav.tap_by_text("BOTÕES")
  @nav.tap_by_text("CLIQUE SIMPLES")
end

Dado('que acesso a tela de clique longo') do
  @nav.tap_hamburger
  @nav.tap_by_text("BOTÕES")
  @nav.tap_by_text("CLIQUE LONGO")
end

Quando('eu clico no botão de clique simples') do
  find_element(id: @button.short_click).click
end

Quando('eu pressiono o botão de clique longo') do
  button = find_element(id: @button.long_click)
  Appium::TouchAction::new.press(element: button).wait(3000).release.perform
end

Então("o botão deve apresentar o texto {string}") do |txt_button|
  messages = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/messages.yml"))
  target_message = messages["#{txt_button}"]["message"]

  btn_text = find_element(id: @button.long_click).text
  expect(btn_text).to eql target_message
end