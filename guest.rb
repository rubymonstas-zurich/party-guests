require 'csv'

class Guest

  CSV_FILE_NAME = 'guests.csv'

  attr_reader :name, :number_of_friends, :time_of_arrival, :homepage

  def initialize(name, number_of_friends, time_of_arrival, homepage)
    @name = name
    @number_of_friends = number_of_friends
    @time_of_arrival = time_of_arrival
    @homepage = homepage
  end

  def self.load_guests
    CSV.read(CSV_FILE_NAME).map do |guest_line|
      Guest.new(
        guest_line[0],
        guest_line[1],
        guest_line[2],
        guest_line[3]
      )
    end
  end

  def add_to_list
    CSV.open(CSV_FILE_NAME, 'a') do |csv|
      csv << [name, number_of_friends, time_of_arrival, homepage]
    end
  end

end
