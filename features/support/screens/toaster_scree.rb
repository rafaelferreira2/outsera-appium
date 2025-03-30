class Toaster
  attr_accessor :toast_item

  def initialize
      @toast_item = "//android.widget.Toast"
  end

  def toast
      find_element(xpath: @toast_item)
  end
end