class Product < ApplicationRecord

  has_many :orders

  has_many :product_categories
  has_many :categories, through: :product_categories
  
  has_many :carted_products
  has_many :orders, through: :carted_products

  has_many :images
  belongs_to :supplier

  accepts_nested_attributes_for :images

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

  def stock_status
    if in_stock == TRUE
      return "In Stock & Ready to Ship!"
    else
      return "Not in Stock. Check back later."
    end
  end

  def price_savings
    (regular_price - price).round(2)
  end

  def discount
    ((regular_price - price) / regular_price * 100).round(2)
  end

end
