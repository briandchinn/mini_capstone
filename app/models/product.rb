class Product < ApplicationRecord

  has_many :orders
  belongs_to :supplier
  has_many :product_categories
  has_many :categories, through: :product_categories

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  has_many :images

  validates :name, presence: true, uniqueness: true
  validates :price, numericality: {greater_than: 0}
  validates :description, length: {in: 10..500}

  def is_discounted?
    price <= 10
  end

  def tax
    (price * 0.09).round(2)
  end

  def total
    (price + tax).round(2)
  end

end
