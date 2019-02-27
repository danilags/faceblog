class Blog < ApplicationRecord
  has_many :comment
  validates :title, presence: true
end
