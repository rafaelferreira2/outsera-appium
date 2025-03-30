Dado("que acesso a tela Botões de Radio") do
  @nav.tap_hamburger
  @nav.tap_by_text("INPUTS")
  @nav.tap_by_text("BOTÕES DE RADIO")
end

Dado("que acesso a tela Botões de Checkbox") do
  @nav.tap_hamburger
  @nav.tap_by_text("INPUTS")
  @nav.tap_by_text("CHECKBOX")
end

Quando("eu escolho a opção {string}") do |option|
  @input.find_radio(option).click
end

Quando("eu marco as opções {string} e {string}") do |target1, target2|
  @input.find_checkbox(target1).click
  @input.find_checkbox(target2).click
end

Quando('eu marco as seguintes opções:') do |table|
  @opcoes = table.hashes
  @opcoes.each do |iten|
    @input.find_checkbox(iten['opcao']).click
  end
end

Então("esta {string} deve ser marcada") do |option|
  expect(@input.find_radio(option).checked).to eql "true"
end

Então("as opções {string} e {string} devem ser marcadas") do |target1, target2|
  expect(@input.find_checkbox(target1).checked).to eql "true"
  expect(@input.find_checkbox(target2).checked).to eql "true"
end

Então('todas essas opções deve estar marcadas') do
  @opcoes.each do |item|
    expect(@input.find_checkbox(item['opcao']).checked).to eql "true"
  end
end