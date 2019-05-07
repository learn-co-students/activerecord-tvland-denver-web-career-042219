require "pry"

class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network #V important!!! caused 4 tests to pass





end
