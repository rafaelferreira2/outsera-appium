Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 10

  @searchHero = SearchHeroScreen.new
  @button = ButtonScreen.new
  @signup = SignupScreen.new
  @input = InputScreen.new
  @listHeros = ListHerosScreen.new
  @login = LoginScreen.new
  @nav = NavigatorScreen.new
  @toaster = Toaster.new

  @nav.start_app
end

After do |scenario|
  if scenario.failed?
    binary_shot = driver.screenshot(:base64)

    name_shot = "logs/#{scenario.name}.png"

    File.open(name_shot, "wb") do |f|
      f.write(Base64.decode64(binary_shot).force_encoding("UTF-8"))
    end
  end

  driver.quit_driver
end
