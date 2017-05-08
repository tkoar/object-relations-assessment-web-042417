class Review

  attr_accessor :customer, :restaurant, :review

  def initialize(review)
    @reviews = []
    @review = review
    customer.add_review(self)
  end


end
