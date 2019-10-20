require "pry"
class Actor < ActiveRecord::Base
  
  has_many :characters
  has_many :show, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    answer = ""
   character_name = self.characters.pluck(:name)
   show_name = self.show.pluck(:name)
   answer = character_name  + ["-"] + show_name
   answer.join(" ")
  end

end