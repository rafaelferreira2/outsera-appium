Dado('que acesso a tela lista de heróis') do
  @nav.tap_by_text("LISTA")
end

Dado('que acesso a tela de busca de herois') do
  @nav.tap_by_text("BUSCA")
end

Quando('eu clico no heroi {string}') do |hero|
  heros = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/heros.yml"))
  @hero_target = heros["#{hero}"]
  @listHeros.tap_name_hero(@hero_target["name"])
  sleep 5
end

Quando('eu busco pelo heroi {string}') do |hero|
  heros = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/heros.yml"))
  @hero_target = heros["#{hero}"]

  @searchHero.search_hero(@hero_target["name"])
  sleep 5
end

Então("devo ver a descrição") do
  expect(@listHeros.find_desc_hero).to eql @hero_target["description"]
end

Então("devo ver o nome do heroi") do
  expect(@searchHero.hero_name).to eql @hero_target["name"]
end

Então("o nome pessoal do heroi") do
  expect(@searchHero.hero_personal_name).to eql @hero_target["personal"]
end
