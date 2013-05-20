class Tutocenter
  include Mongoid::Document

  field :domaine, type: String
  field :nom, type: String
  field :sousTitre, type: String

  embedded_in :user, :inverse_of => :tutocenters

  embeds_many :categories
end
