class InputScreen
  def find_radio(option)
    find_element(xpath: "//android.widget.RadioButton[contains(@text, '#{option}')]")
  end

  def find_checkbox(option)
    find_element(xpath: "//android.widget.CheckBox[contains(@text,'#{option}')]")
  end
end