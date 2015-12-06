require 'csv'
require './profile'

class ProfileRepository

  def self.all_profiles
    CSV.table('profiles.csv').map do |row|
      Profile.new(
        row[:nickname],
        row[:name],
        row[:date_of_birth],
        row[:image_file],
        row[:hobbies],
        row[:friends]
      )
    end
  end

  def self.find_profile(nickname)
    all_profiles.find do |profile|
      profile.nickname == nickname
    end
  end

end
