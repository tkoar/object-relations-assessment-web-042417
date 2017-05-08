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
