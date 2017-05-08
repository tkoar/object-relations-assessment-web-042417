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
