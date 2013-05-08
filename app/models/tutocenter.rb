class Tutocenter
  include Mongoid::Document

  field :domaine, type: String

  embedded_in :user, :inverse_of => :tutocenters

  embeds_many :categories
end
