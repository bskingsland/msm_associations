class Director < ApplicationRecord

validates :name, :presence => true, :uniqueness => { :scope => :dob }
validates :duration, :numericality => { :only_integer => true, :allow_blank => true }

end
