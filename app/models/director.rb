class Director < ApplicationRecord

validates :name, :presence => true, :uniqueness => { :scope => :dob }

end
