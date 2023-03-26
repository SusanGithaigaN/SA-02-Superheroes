class HeroesSerializer < ActiveModel::Serializer
  attributes :id, :name, :super_name
  
  # create a relationship between hero and power 
  has_many :powers
end
