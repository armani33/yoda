class Subscriber < ApplicationRecord
  validates :name, :email, presence: true, uniqueness: true
end
