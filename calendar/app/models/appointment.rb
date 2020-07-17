class Appointment < ActiveRecord::Base
# To validate length of appointment name
  validates :name, :presence => true,
                   :length => { :within => 3..255 }
end