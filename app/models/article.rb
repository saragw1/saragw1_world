class Article < ApplicationRecord
    has_one :category

    #Validations
  validates_presence_of :title, :content

  #Scopes
  scope :alphabetical, -> { order('title') }
  scope :active, -> { where(active: true) }
end
