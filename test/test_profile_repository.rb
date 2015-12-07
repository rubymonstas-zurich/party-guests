require "minitest/autorun"
require "./profile_repository"

class TestProfileRepository < Minitest::Test

  def test_that_all_profiles_are_loaded
    assert_equal 3, ProfileRepository.all_profiles.size
  end

  def test_profile_data
    profile = ProfileRepository.all_profiles[0]

    assert_equal 'Peter', profile.name
    assert_equal 'peter', profile.nickname
    assert_equal '10.06.1986', profile.date_of_birth
    assert_equal 'peter.jpg', profile.image_file
    assert_equal ['Swimming', 'travelling'], profile.hobbies
    assert_equal ['ines', 'shirley'], profile.friends
  end

end
