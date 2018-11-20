class Product < ApplicationRecord
  include Fae::BaseModelConcern

  validates :name, presence: true

  def fae_display_field
    name
  end

  fae_translate :name, :description

  def self.for_fae_index
    order(:id)
  end
end
