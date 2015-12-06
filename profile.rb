class Profile

  attr_accessor :nickname, :name, :date_of_birth, :image_file, :hobbies, :friends

  def initialize(nickname, name, date_of_birth, image_file, hobbies, friends)
    @nickname      = nickname
    @name          = name
    @date_of_birth = date_of_birth
    @image_file    = image_file
    @hobbies       = hobbies.split(',')
    @friends       = friends.split(',')
  end

end
