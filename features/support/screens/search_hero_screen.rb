class SearchHeroScreen

  attr_accessor :search, :hero_name, :personal_name

  def initialize
      @search = "io.qaninja.android.twp:id/etSearch"
      @hero_name =  "io.qaninja.android.twp:id/textName"
      @personal_name = "io.qaninja.android.twp:id/textEmail"
  end

  def search_hero(hero)
      find_element(id: @search).send_keys(hero)
  end

  def hero_name
      find_element(id:  @hero_name).text
  end

  def hero_personal_name
      find_element(id: @personal_name).text
  end

end