class Institution < ApplicationRecord
  has_many :users

  has_one_attached :logo
  has_one_attached :cover
end