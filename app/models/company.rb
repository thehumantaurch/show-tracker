class Company < ActiveRecord::Base
  has_many :productions
  has_many :roles
end