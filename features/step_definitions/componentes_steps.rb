Então("devo ver a notificação {string}") do |notification|
  messages = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/messages.yml"))
  target_message = messages["#{notification}"]["message"]

  expect(@toaster.toast.text).to eql target_message
end

Então("devo ver o alerta {string}") do |notification|
  messages = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/messages.yml"))
  target_message = messages["#{notification}"]["message"]

  expect(@login.alert.text).to eql target_message
end