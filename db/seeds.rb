# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: 'Chair', description: 'black wooder', price_in_cents: 900, url: 'https://www.ikea.com/us/en/images/products/ingolf-chair-black__0355482_PE547815_S4.JPG')
Product.create(name: 'Aeroplane', description: 'Airbus A380', price_in_cents: 3400000, url: 'https://dynaimage.cdn.cnn.com/cnn/q_auto,w_1024,c_fill,g_auto,h_576,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F160705120108-farnborough-a380-paris-airshow.jpg')
Product.create(name: 'Rock', description: 'hard', price_in_cents: 1, url: 'https://vignette.wikia.nocookie.net/yandere-simulator-fanon/images/4/4e/Johnson.jpg/revision/latest?cb=20160625153352')
Product.create(name: 'yoyo', description: 'spinny', price_in_cents: 20, url: 'https://assets.pinshape.com/uploads/image/file/96364/container_yoyo-captain-america-3dfactory-brazil-3dprintable-3d-printing-96364.jpg')
Review.create(product_id: 1, description: 'This is a product review' )
Review.create(product_id: 2, description: 'Amazing!')
Review.create(product_id: 1, description: 'Good quality')
