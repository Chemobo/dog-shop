# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "🌱 Seeding dogs..."
Dog.create([
{
breed: "Affenpinscher",
image: "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2020/05/21144745/Affenpinscher-running.jpg",
likes: 2
},
{
breed: "Akita",
image: "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/06154034/Akita-standing-outdoors-in-the-summer.jpg",
likes: 6
},
{
breed: "Beagle",
image: "https://upload.wikimedia.org/wikipedia/commons/5/55/Beagle_600.jpg",
likes: 3
},
{
breed: "Belgian Malinois",
image: "https://cdn.britannica.com/85/232785-050-0EE871BE/Belgian-Malinois-dog.jpg",
likes: 8
},
{
breed: "Bullmastiff",
image: "https://www.akc.org/wp-content/uploads/2017/11/Bullmastiff-standing-in-a-field.jpg",
likes: 5
},
{
breed: "Catahoula Leopard Dog",
image: "https://upload.wikimedia.org/wikipedia/commons/6/61/1._Catahoula_Leopard_Dog%2C_Buck.jpg",
likes: 4
},
{
breed: "Doberman Pinscher",
image: "https://www.bubblypet.com/wp-content/uploads/2021/03/Best-Doberman-rescue-for-adoption.jpg",
likes: 5
},
{
breed: "English Setter",
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqzMW-TT9kD2oIm_xtY6H6jSJLhgFGOz7VPg&usqp=CAU",
likes: 4
},
{
breed: "Field Spaniel",
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAX4doT1PF4VKrnvI0olaMs1koHs0wga2Ing&usqp=CAU",
likes: 3
},
{
breed: "German Shepherd",
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQApnCBCSnDbBB6crwrVLJVs85bQgzmHOQPaw&usqp=CAU",
likes: 10
},
{
breed: "Havanese",
image: "https://www.yourpurebredpuppy.com/dogbreeds/photos-EFGH/havanesef1.jpg",
likes: 5
},
{
breed: "Italian Greyhound",
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbmpeH7aNZ_R-1FxZm6CFuE8pZf2HqrP059Q&usqp=CAU",
likes: 8
},
{
breed: "Japanese Spitz",
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLkx7faPa53Bch2_uGvFhQKfP1ssjTVI1qgw&usqp=CAU",
likes: 7
},
{
breed: "Lagotto Romagnolo",
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxkddO-89s7dxe-qvvXbw7hSraHMxtwx1Pkg&usqp=CAU",
likes: 2
},
{
breed: "Shih Tzu",
image: "https://img.cutenesscdn.com/640/cpie/images/a04/7p/un/breed-shih-tzus-800x800.jpg",
likes: 9
}])

puts "✅ Done seeding!"