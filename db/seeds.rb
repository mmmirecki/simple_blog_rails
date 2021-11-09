# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ProductCategory.delete_all

Product.delete_all

10.times do |i|
  if i%2==0
    Product.create(title: "Product ##{i}",quantity: 2 , description: "A product.", img: "https://images.freeimages.com/images/large-previews/e46/furniture-3-1425786.jpg")
  elsif i%5==0
    Product.create(title: "Product ##{i}",quantity: 5 , description: "A product.", img: "https://images.freeimages.com/images/large-previews/e46/furniture-3-1425786.jpg")
  else
    Product.create(title: "Product ##{i}",quantity: 10 , description: "A product.", img: "https://images.freeimages.com/images/large-previews/e46/furniture-3-1425786.jpg")

  end
end

Category.delete_all

Category.create(name: "all")
Category.create(name: "basic")
Category.create(name: "premium")

Product.all.each do |product|
  @product_id = product.id
  if @product_id % 2 == 0
    @category_id = Category.first.id
  else
    @category_id = Category.last.id
  end
  ProductCategory.create(product_id: @product_id, category_id: @category_id)
end