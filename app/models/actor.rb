class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    characters.collect do |each_char|
     "#{each_char.name} - #{each_char.show.name}"
    end
  end


end
