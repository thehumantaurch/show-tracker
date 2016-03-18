class Role < ActiveRecord::Base
  belongs_to :user
  belongs_to :production
  belongs_to :company
end