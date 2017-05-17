class Actor < ApplicationRecord

validates :name, :presence => true, :uniqueness => { :scope => :dob }

has_many :characters, :class_name => "Character"
has_many :movies, :through => :characters

end
