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
product2 = Product.new(name: "Pan", price: "50", expiration_date: "2023/09/15", stock: 2, category: "panadería y repostería", user: user1)
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
product7 = Product.new(name: "Pan Hot Dog", price: "15", expiration_date: "2023/09/02", stock: 6, category: "panadería y repostería", user: user3)
product7.photo.attach(io: file, filename: "panhotdog.png", content_type: "image/png")
product7.save!

puts "creando producto 8..."
file = URI.open("https://cdnx.jumpseller.com/sidapt/image/4024325/resize/560/632?1652286204.JPG")
product8 = Product.new(name: "Jugo", price: "20", expiration_date: "2023/09/03", stock: 8, category: "bebidas", user: user2)
product8.photo.attach(io: file, filename: "jugo.png", content_type: "image/png")
product8.save!

puts "creando producto 9..."
file = URI.open("https://r.btcdn.co/r/eyJzaG9wX2lkIjo0MDY0LCJnIjoiMTAwMHgifQ/f94f9d776de57d4/817919-7801423000331.jpg")
product9 = Product.new(name: "Choritos", price: "40", expiration_date: "2023/09/5", stock: 7, category: "congelados", user: user1)
product9.photo.attach(io: file, filename: "choritos.png", content_type: "image/png")
product9.save!

puts "creando producto 10..."
file = URI.open("https://r.btcdn.co/r/eyJzaG9wX2lkIjo0MDY0LCJnIjoiMTAwMHgifQ/f94f9d776de57d4/676389-28150.jpg")
product10 = Product.new(name: "Pie de limón", price: "60", expiration_date: "2023/09/5", stock: 4, category: "panadería y repostería", user: user2)
product10.photo.attach(io: file, filename: "piedelimon.png", content_type: "image/png")
product10.save!

puts "creando producto 11..."
file = URI.open("https://r.btcdn.co/r/eyJzaG9wX2lkIjo0MDY0LCJnIjoiMTAwMHgifQ/f94f9d776de57d4/667202-7801610993200.jpg")
product11 = Product.new(name: "Refresco", price: "30", expiration_date: "2023/09/2", stock: 5, category: "bebidas", user: user1)
product11.photo.attach(io: file, filename: "refresco.png", content_type: "image/png")
product11.save!

puts "creando producto 12..."
file = URI.open("https://www.multifood.com.ar/images/000Z-001-010-01225212Z-001-010-012-oreo-regular-117grs.jpg")
product12 = Product.new(name: "Oreo", price: "20", expiration_date: "2023/09/1", stock: 10, category: "panadería y repostería", user: user2)
product12.photo.attach(io: file, filename: "oreo.png", content_type: "image/png")
product12.save!

puts "creando producto 13..."
file = URI.open("https://r.btcdn.co/r/eyJzaG9wX2lkIjo0MDY0LCJnIjoiMTAwMHgifQ/f94f9d776de57d4/674265-7803110102212.jpg")
product13 = Product.new(name: "Arroz", price: "10", expiration_date: "2023/09/2", stock: 12, category: "granos y cereales", user: user1)
product13.photo.attach(io: file, filename: "arroz.png", content_type: "image/png")
product13.save!

puts "creando producto 14..."
file = URI.open("https://r.btcdn.co/r/eyJzaG9wX2lkIjo0MDY0LCJnIjoiMTAwMHgifQ/f94f9d776de57d4/689693-7809611714503.jpg")
product14 = Product.new(name: "Jamón", price: "40", expiration_date: "2023/09/1", stock: 5, category: "procesados", user: user1)
product14.photo.attach(io: file, filename: "jamon.png", content_type: "image/png")
product14.save!

puts "creando producto 15..."
file = URI.open("https://almacencamposverdes.com.ar/wp-content/uploads/2018/04/1107.jpg")
product15 = Product.new(name: "Té negro", price: "10", expiration_date: "2023/09/3", stock: 8, category: "bebidas", user: user3)
product15.photo.attach(io: file, filename: "ténegro.png", content_type: "image/png")
product15.save!

puts "creando producto 16..."
file = URI.open("https://rogusa.es/wp-content/uploads/2020/12/Lentejas_425-800x800-1.png")
product16 = Product.new(name: "Lentejas", price: "7.50", expiration_date: "2023/09/13", stock: 3, category: "orgánicos", user: user1)
product16.photo.attach(io: file, filename: "lentejas.png", content_type: "image/png")
product16.save!

puts "creando producto 17..."
file = URI.open("https://www.facundo.com.ec/wp-content/uploads/2020/11/vc-maiz-dulce.png")
product17 = Product.new(name: "Choclo", price: "9.1", expiration_date: "2023/09/30", stock: 8, category: "orgánicos", user: user2)
product17.photo.attach(io: file, filename: "choclo.png", content_type: "image/png")
product17.save!

puts "creando producto 18..."
file = URI.open("https://quaker.lat/app/uploads/sites/2/2019/06/750047801929_720x840.png")
product18 = Product.new(name: "Avena", price: "10", expiration_date: "2023/09/12", stock: 4, category: "granos y cereales", user: user3)
product18.photo.attach(io: file, filename: "avena.png", content_type: "image/png")
product18.save!

puts "creando producto 19..."
file = URI.open("https://d2r9epyceweg5n.cloudfront.net/stores/001/108/127/products/paty-clasico-x4byb1-57cac8cd6117b410cb15888174052438-1024-1024.png")
product15 = Product.new(name: "Hamburguesas", price: "2.70", expiration_date: "2023/09/24", stock: 29, category: "congelados", user: user1)
product15.photo.attach(io: file, filename: "hamburguesas.png", content_type: "image/png")
product15.save!

puts "creando producto 20..."
file = URI.open("https://ss-static-01.esmsv.com/id/144746/productos/obtenerimagen/?id=2816&useDensity=false&width=1280&height=720&tipoEscala=contain")
product15 = Product.new(name: "Merengadas", price: "7.20", expiration_date: "2023/10/3", stock: 21, category: "panadería y repostería", user: user2)
product15.photo.attach(io: file, filename: "merengadas.png", content_type: "image/png")
product15.save!

puts "creando producto 21..."
file = URI.open("https://d2r9epyceweg5n.cloudfront.net/stores/001/108/127/products/matarazzo-spaghetti1-df505594149de0eb3d15946808095300-1024-1024.png")
product21 = Product.new(name: "Spaghetti", price: "10", expiration_date: "2023/09/3", stock: 8, category: "procesados", user: user3)
product21.photo.attach(io: file, filename: "spaghetti.png", content_type: "image/png")
product21.save!

puts "creando producto 22..."
file = URI.open("https://ptlone.com/product/image/large/sn647_0.png")
product22 = Product.new(name: "Doritos", price: "12.50", expiration_date: "2023/09/13", stock: 3, category: "procesados", user: user1)
product22.photo.attach(io: file, filename: "doritos.png", content_type: "image/png")
product22.save!

puts "creando producto 23..."
file = URI.open("https://bogota.farmu.com.co/cdn/shop/products/STEVIA-Caja-x-50g.png?v=1664204104")
product23 = Product.new(name: "Stevia", price: "9.1", expiration_date: "2023/09/30", stock: 8, category: "dietéticos y suplementos", user: user2)
product23.photo.attach(io: file, filename: "stevia.png", content_type: "image/png")
product23.save!

puts "creando producto 24..."
file = URI.open("https://benoti.pe/wp-content/uploads/2021/02/harinaindustrialintegral-1.png")
product24 = Product.new(name: "Harina integral", price: "10", expiration_date: "2023/09/12", stock: 4, category: "dietéticos y suplementos", user: user3)
product24.photo.attach(io: file, filename: "harinaintegral.png", content_type: "image/png")
product24.save!

puts "creando producto 25..."
file = URI.open("https://d2r9epyceweg5n.cloudfront.net/stores/001/108/127/products/casamcream-light-x300byb1-f90425adb323fab39215959377856790-1024-1024.png")
product25 = Product.new(name: "Queso crema light", price: "2.70", expiration_date: "2023/09/24", stock: 21, category: "dietéticos y suplementos", user: user1)
product25.photo.attach(io: file, filename: "casancrem.png", content_type: "image/png")
product25.save!

puts "creando producto 26..."
file = URI.open("https://www.negroni.com/sites/negroni.com/files/styles/scale__1440_x_1440_/public/recipes/2019/05/g3364_salame_milano_stella_100g_2019_0.png?itok=uLlZltJT")
product26 = Product.new(name: "Salame", price: "7.2", expiration_date: "2023/10/3", stock: 21, category: "procesados", user: user2)
product26.photo.attach(io: file, filename: "salame.png", content_type: "image/png")
product26.save!

puts "creando producto 27..."
file = URI.open("https://theargentino.com/cdn/shop/products/serenisima_1024x.png?v=1657652358")
product27 = Product.new(name: "Dulce de leche", price: "10", expiration_date: "2023/09/3", stock: 8, category: "panadería y repostería", user: user3)
product27.photo.attach(io: file, filename: "dulcedeleche.png", content_type: "image/png")
product27.save!

puts "creando producto 28..."
file = URI.open("https://d2r9epyceweg5n.cloudfront.net/stores/001/108/127/products/la-perla-piononobyb1-c62ef2c17316f6582815900119149262-1024-1024.png")
product28 = Product.new(name: "Pionono", price: "12.50", expiration_date: "2023/09/13", stock: 3, category: "panadería y repostería", user: user1)
product28.photo.attach(io: file, filename: "pionono.png", content_type: "image/png")
product28.save!

puts "creando producto 29..."
file = URI.open("https://www.aki.com.ec/wp-content/uploads/2023/05/7861042534242.png")
product29 = Product.new(name: "Chocolate repostero", price: "9.1", expiration_date: "2023/09/30", stock: 8, category: "panadería y repostería", user: user2)
product29.photo.attach(io: file, filename: "chocolaterepostero.png", content_type: "image/png")
product29.save!

puts "creando producto 30..."
file = URI.open("https://d2r9epyceweg5n.cloudfront.net/stores/001/108/127/products/vegetalex-milanesa-soja1-be0500ccfe134ef63715973560977895-1024-1024.png")
product30 = Product.new(name: "Milanesas de soja", price: "10", expiration_date: "2023/09/12", stock: 4, category: "congelados", user: user3)
product30.photo.attach(io: file, filename: "milanesassoja.png", content_type: "image/png")
product30.save!

puts "creando producto 31..."
file = URI.open("https://d2r9epyceweg5n.cloudfront.net/stores/001/108/127/products/patitas-de-pollo-granja-de-sol-400gbyb1-ab8d082d191f4b493a15888172762629-1024-1024.png")
product31 = Product.new(name: "Patitas", price: "2.70", expiration_date: "2023/09/24", stock: 21, category: "congelados", user: user1)
product31.photo.attach(io: file, filename: "patitas.png", content_type: "image/png")
product31.save!

puts "creando producto 32..."
file = URI.open("https://freschezzafoods.com/wp-content/uploads/2021/04/papas-cruj.png")
product32 = Product.new(name: "Papas fritas", price: "13.2", expiration_date: "2023/10/3", stock: 32, category: "congelados", user: user2)
product32.photo.attach(io: file, filename: "papasfritas.png", content_type: "image/png")
product32.save!

puts "creando producto 33..."
file = URI.open("https://vinotecamasis.com.ar/wp-content/uploads/2021/02/Agua-Villavicencio-Sin-Gas-1500-ml-ML.png")
product33 = Product.new(name: "Agua", price: "1.45", expiration_date: "2023/09/24", stock: 38, category: "bebidas", user: user1)
product33.photo.attach(io: file, filename: "agua.png", content_type: "image/png")
product33.save!

puts "creando producto 34..."
file = URI.open("https://cdn11.bigcommerce.com/s-4nzgid62dq/images/stencil/1280x1280/products/174/36/absolut-vodka-PI-B__66411.1631160961.png?c=2")
product34 = Product.new(name: "Vodka", price: "7.2", expiration_date: "2023/10/3", stock: 9, category: "bebidas", user: user2)
product34.photo.attach(io: file, filename: "vodka.png", content_type: "image/png")
product34.save!

puts "creando producto 35..."
file = URI.open("https://res.cloudinary.com/oita/image/upload/v1688057534/Merco/Parte%205/7501008042946_CEREAL_ZUCARITAS_300_GR_KELLOGGS_fvwv0r.png")
product35 = Product.new(name: "Zucaritas", price: "8", expiration_date: "2023/09/3", stock: 6, category: "granos y cereales", user: user3)
product35.photo.attach(io: file, filename: "zucaritas.png", content_type: "image/png")
product35.save!

puts "creando producto 36..."
file = URI.open("https://b-japi.com/cdn/shop/products/Disenosintitulo_27_1024x1024.png?v=1671810774")
product36 = Product.new(name: "Granola", price: "12.50", expiration_date: "2023/09/13", stock: 3, category: "granos y cereales", user: user1)
product36.photo.attach(io: file, filename: "granola.png", content_type: "image/png")
product36.save!

puts "creando producto 37..."
file = URI.open("https://www.laserenisima.com.ar/images/productos/Leche-LS-Bien-Animal-3-sachet-ok.png")
product37 = Product.new(name: "Leche", price: "9.1", expiration_date: "2023/09/30", stock: 8, category: "frescos", user: user2)
product37.photo.attach(io: file, filename: "leche.png", content_type: "image/png")
product37.save!

puts "creando producto 38..."
file = URI.open("https://www.yogurser.com.ar/wp-content/uploads/2023/02/Ser-Batido-FREE-con-frambuesa-906x1024.png")
product38 = Product.new(name: "Yogurt", price: "10", expiration_date: "2023/09/12", stock: 4, category: "frescos", user: user3)
product38.photo.attach(io: file, filename: "yogurt.png", content_type: "image/png")
product38.save!

puts "creando producto 39..."
file = URI.open("https://distribuidoracunia.com/wp-content/uploads/2021/03/queso-danbo-bonle.png")
product39 = Product.new(name: "Queso dambo", price: "2.70", expiration_date: "2023/09/24", stock: 21, category: "frescos", user: user1)
product39.photo.attach(io: file, filename: "quesodambo.png", content_type: "image/png")
product39.save!

puts "creando producto 40..."
file = URI.open("https://sunrise-soya.com/wp-content/uploads/2022/02/SS77146_YatSing_700g_Rectangle_Tradition_3D.png")
product40 = Product.new(name: "Tofu", price: "13.2", expiration_date: "2023/10/3", stock: 32, category: "vegetarianos y veganos", user: user2)
product40.photo.attach(io: file, filename: "tofu.png", content_type: "image/png")
product40.save!

puts "creando producto 41..."
file = URI.open("https://www.silkargentina.com.ar/wp-content/uploads/2023/06/Almendra-Original.png")
product41 = Product.new(name: "Leche de almendra", price: "13.2", expiration_date: "2023/10/3", stock: 32, category: "vegetarianos y veganos", user: user2)
product41.photo.attach(io: file, filename: "lechealmendra.png", content_type: "image/png")
product41.save!

puts "creando producto 42..."
file = URI.open("https://ss-static-01.esmsv.com/id/144746/productos/obtenerimagen/?id=5300&useDensity=false&width=1280&height=720&tipoEscala=contain")
product42 = Product.new(name: "Azucar maskabo", price: "25.2", expiration_date: "2023/10/3", stock: 42, category: "orgánicos", user: user2)
product42.photo.attach(io: file, filename: "azucarmaskabo.png", content_type: "image/png")
product42.save!

transaction1 = Transaction.create!(product: product11, user: user3, price: product11.price)
transaction2 = Transaction.create!(product: product9, user: user3, price: product9.price)
transaction3 = Transaction.create!(product: product2, user: user3, price: product2.price)
transaction4 = Transaction.create!(product: product7, user: user2, price: product7.price)
transaction5 = Transaction.create!(product: product3, user: user2, price: product3.price)
transaction6 = Transaction.create!(product: product6, user: user2, price: product6.price)
