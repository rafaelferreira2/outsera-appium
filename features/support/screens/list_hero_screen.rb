class ListHerosScreen
  attr_accessor :about, :btn_remove

  def initialize
      @about = "io.qaninja.android.twp:id/textAboutExtended"
      @div_list =  "io.qaninja.android.twp:id/rvList"
      @btn_remove = "io.qaninja.android.twp:id/btnRemove"
  end

  def list
      find_element(id: @div_list)
  end

  def tap_name_hero(target)
      find_element(xpath: "//android.widget.TextView[contains(@text, '#{target}')]").click
  end

  def find_desc_hero
      find_element(id: @about).text
  end

end