if Rails.development?
  Transaction.destroy_all
  Product.destroy_all
  User.destroy_all
end

user1  = User.new(name: )
