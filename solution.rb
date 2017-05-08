# Please copy/paste all three classes into this file to submit your solution!
class Restaurant
  attr_accessor :name

  @@restaurants = []

  def initialize(name)
    @name = name
    @reviews = []
    @@restaurants << self
  end

  def self.all
    @@restaurants
  end

  def self.find_by_name(name)
    self.all.detect { |restaurant| restaurant.name == name}
  end

  def add_review(customer, review)
    self.reviews << review
  end

  def reviews
    @reviews
  end

  def customers
    self.reviews.collect { |review| review.customer }
  end

end


class Customer
  attr_accessor :first_name, :last_name

  @@customers = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @reviews = []
    @@customers << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@customers
  end

  def self.find_by_name(name)
    self.all.detect { |customer| customer.fullname == name }
  end

  def self.find_all_by_first_name(name)
    self.all.collect { |collect| customer.first_name == name }
  end

  def self.all_names
    self.all.map { |customer| customer.full_name }
  end

  def add_review(restaurant, review)
    self.reviews << review
    # review.customer = self
  end

  def reviews
    @reviews
  end

end


class Review

  attr_accessor :customer, :restaurant, :review

  def initialize(review)
    @reviews = []
    @review = review
    customer.add_review(self)
  end


end
