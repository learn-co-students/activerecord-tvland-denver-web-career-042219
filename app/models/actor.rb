require "pry"

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles

    #collect the roles
    shows = self.shows.map do |show|
              show.name
            end
    #collect the shows
    roles = self.characters.map do |character|
              character.name
            end
    #connect the two arrays with .zip
    imdb = roles.zip(shows)
    #interate through all roles/shows and format
    imdb.collect do |imdb|
      imdb.join(" - ")
    end
  end



end
