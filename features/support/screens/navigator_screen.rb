class NavigatorScreen
  attr_accessor :btn_start, :menu_hamburguer, :lista

  def initialize
      @menu_hamburguer = "//android.widget.ImageButton[@content-desc='Open navigation drawer']"
      @list = "io.qaninja.android.twp:id/rvNavigation"
      @btn_start = "//android.widget.Button[@text='COMEÇAR']"
  end

  def start_app
      find_element(xpath: @btn_start).click
  end

  def tap_hamburger
      find_element(xpath: @menu_hamburguer).click
  end

  def list
      find_element(id: @list)
  end

  def tap_by_text(target)
      find_element(xpath: "//*[@text='#{target}']").click
  end
end
