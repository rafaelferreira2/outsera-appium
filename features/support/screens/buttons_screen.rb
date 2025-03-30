class ButtonScreen
  attr_accessor :short_click, :long_click

  def initialize
      @short_click = "io.qaninja.android.twp:id/short_click"
      @long_click = "io.qaninja.android.twp:id/long_click"
  end
end