require "open-uri"

if Rails.env.development?
  Transaction.destroy_all
  Product.destroy_all
  User.destroy_all
end

puts "creando usuario 1..."
file = URI.open("https://avatars.githubusercontent.com/u/139592608?v=4")
user1 = User.new(email: "elisa@gmail.com", password: "123456")
user1.photo.attach(io: file, filename: "elisa.png", content_type: "image/png")
user1.save!

puts "creando usuario 2..."
file = URI.open("https://avatars.githubusercontent.com/u/88845568?v=4")
user2 = User.new(email: "facundo@gmail.com", password: "123456")
user2.photo.attach(io: file, filename: "facundo.png", content_type: "image/png")
user2.save!

puts "creando usuario 3..."
file = URI.open("https://avatars.githubusercontent.com/u/128540417?v=4")
user3 = User.new(email: "dominique@gmail.com", password: "123456")
user3.photo.attach(io: file, filename: "dominique.png", content_type: "image/png")
user3.save!

puts "creando producto 1..."
file = URI.open("https://www.puebloweb.com/products-images/md/432504-14132.jpg")
product1 = Product.new(name: "Leche", price: "40", expiration_date: "2023/09/01", stock: 3, category: "bebidas", user: user2)
product1.photo.attach(io: file, filename: "leche.png", content_type: "image/png")
product1.save!

puts "creando producto 2..."
file = URI.open("https://statics.dinoonline.com.ar/imagenes/full_600x600_ma/3420504_f.jpg")
product2 = Product.new(name: "Pan", price: "50", expiration_date: "2023/08/29", stock: 2, category: "panadería y repostería", user: user1)
product2.photo.attach(io: file, filename: "pan.png", content_type: "image/png")
product2.save!

puts "creando producto 3..."
file = URI.open("https://cdn2.lomi.cl/cdn-cgi/image/width=475,height=475,quality=75,f=auto,fit=pad/pip0s3ihdlpro6l723dlthi0rjqk.jpeg")
product3 = Product.new(name: "Limón", price: "30", expiration_date: "2023/09/01", stock: 7, category: "frescos", user: user3)
product3.photo.attach(io: file, filename: "limon.png", content_type: "image/png")
product3.save!

puts "creando producto 4..."
file = URI.open("https://eurocarne.com/img/noticias_cache/52124ih.jpg")
product4 = Product.new(name: "Pollo", price: "50", expiration_date: "2023/09/02", stock: 3, category: "frescos", user: user1)
product4.photo.attach(io: file, filename: "pollo.png", content_type: "image/png")
product4.save!

puts "creando producto 5..."
file = URI.open("https://cdn2.lomi.cl/cdn-cgi/image/width=475,height=475,quality=75,f=auto,fit=pad/lzb31b76ztfe4nxbnt8zuf6w2dyt.jpeg")
product5 = Product.new(name: "Salmón", price: "70", expiration_date: "2023/09/04", stock: 2, category: "frescos", user: user2)
product5.photo.attach(io: file, filename: "salmón.png", content_type: "image/png")
product5.save!

puts "creando producto 6..."
file = URI.open("https://r.btcdn.co/r/eyJzaG9wX2lkIjo0MDY0LCJnIjoiMTAwMHgifQ/f94f9d776de57d4/703931-7804613040322.jpg")
product6 = Product.new(name: "Naranja", price: "20", expiration_date: "2023/09/01", stock: 7, category: "frescos", user: user3)
product6.photo.attach(io: file, filename: "naranja.png", content_type: "image/png")
product6.save!

puts "creando producto 7..."
file = URI.open("https://r.btcdn.co/r/eyJzaG9wX2lkIjo0MDY0LCJnIjoiMTAwMHgifQ/f94f9d776de57d4/840747-7803468001427.jpg")
product7 = Product.new(name: "Pan Hot Dog", price: "15", expiration_date: "2023/09/02", stock: 6, category: "panadería y repostería", user: user1)
product7.photo.attach(io: file, filename: "panhotdog.png", content_type: "image/png")
product7.save!

puts "creando producto 7..."
file = URI.open("https://cdnx.jumpseller.com/sidapt/image/4024325/resize/560/632?1652286204.JPG")
product7 = Product.new(name: "Jugo", price: "20", expiration_date: "2023/08/30", stock: 8, category: "bebidas", user: user2)
product7.photo.attach(io: file, filename: "jugo.png", content_type: "image/png")
product7.save!

puts "creando producto 8..."
file = URI.open("https://r.btcdn.co/r/eyJzaG9wX2lkIjo0MDY0LCJnIjoiMTAwMHgifQ/f94f9d776de57d4/817919-7801423000331.jpg")
product8 = Product.new(name: "Choritos", price: "40", expiration_date: "2023/09/5", stock: 7, category: "congelados", user: user3)
product8.photo.attach(io: file, filename: "choritos.png", content_type: "image/png")
product8.save!

puts "creando producto 9..."
file = URI.open("https://r.btcdn.co/r/eyJzaG9wX2lkIjo0MDY0LCJnIjoiMTAwMHgifQ/f94f9d776de57d4/676389-28150.jpg")
product9 = Product.new(name: "Pie de limón", price: "60", expiration_date: "2023/09/5", stock: 4, category: "panadería y repostería", user: user2)
product9.photo.attach(io: file, filename: "piedelimon.png", content_type: "image/png")
product9.save!

puts "creando producto 10..."
file = URI.open("https://r.btcdn.co/r/eyJzaG9wX2lkIjo0MDY0LCJnIjoiMTAwMHgifQ/f94f9d776de57d4/667202-7801610993200.jpg")
product10 = Product.new(name: "Refresco", price: "30", expiration_date: "2023/09/2", stock: 5, category: "bebidas", user: user3)
product10.photo.attach(io: file, filename: "refresco.png", content_type: "image/png")
product10.save!

puts "creando producto 11..."
file = URI.open("https://www.multifood.com.ar/images/000Z-001-010-01225212Z-001-010-012-oreo-regular-117grs.jpg")
product11 = Product.new(name: "Oreo", price: "20", expiration_date: "2023/09/1", stock: 10, category: "panadería y repostería", user: user2)
product11.photo.attach(io: file, filename: "oreo.png", content_type: "image/png")
product11.save!

puts "creando producto 12..."
file = URI.open("https://r.btcdn.co/r/eyJzaG9wX2lkIjo0MDY0LCJnIjoiMTAwMHgifQ/f94f9d776de57d4/674265-7803110102212.jpg")
product12 = Product.new(name: "Arroz", price: "10", expiration_date: "2023/09/2", stock: 12, category: "granos y cereales", user: user1)
product12.photo.attach(io: file, filename: "arroz.png", content_type: "image/png")
product12.save!

puts "creando producto 13..."
file = URI.open("https://r.btcdn.co/r/eyJzaG9wX2lkIjo0MDY0LCJnIjoiMTAwMHgifQ/f94f9d776de57d4/689693-7809611714503.jpg")
product13 = Product.new(name: "Jamón", price: "40", expiration_date: "2023/09/1", stock: 5, category: "procesados", user: user1)
product13.photo.attach(io: file, filename: "jamon.png", content_type: "image/png")
product13.save!

puts "creando producto 14..."
file = URI.open("https://almacencamposverdes.com.ar/wp-content/uploads/2018/04/1107.jpg")
product14 = Product.new(name: "Té negro", price: "10", expiration_date: "2023/09/3", stock: 8, category: "bebidas", user: user3)
product14.photo.attach(io: file, filename: "ténegro.png", content_type: "image/png")
product14.save!

transaction1 = Transaction.create!(product: product11, user: user3, price: product11.price)
transaction2 = Transaction.create!(product: product9, user: user1, price: product9.price)
transaction3 = Transaction.create!(product: product2, user: user2, price: product2.price)
