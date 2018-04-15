class Staff_Member
  attr_accessor :name, :pic, :position, :quote

  def initialize(name, pic, position, quote)
    @name = name
    @pic = pic
    @position = position
    @quote = quote
  end
end
