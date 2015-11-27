class Cocktail < ActiveRecord::Base
  has_many :doses, dependent: :destroy # delete this
  has_many :ingredients, :through => :doses

  # Updating the model to accept attache images with paperclip gem
  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
  validates :name, presence: true, uniqueness: true

end
