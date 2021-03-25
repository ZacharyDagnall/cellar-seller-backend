# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name:"Bob", password:"Bob")
f1 = u1.folders.find_by(name: "main")
f1.items.create(name:"item", url:"website.com", price:34.23, img:"pictre.com")

mom = User.create(name: "Mom", password: "test123")
f2 = mom.folders.create(name: "mulan barbies")
f2.items.create(name: "Mulan Disney Store Barbie Fashion Doll 2004 Used", url: "https://www.ebay.com/itm/Mulan-Disney-Store-Barbie-Fashion-Doll-2004-Used/274728952762?hash=item3ff71f23ba:g:K~wAAOSw0aBgV9uq", price: 8.00, img: "https://i.ebayimg.com/thumbs/images/g/K~wAAOSw0aBgV9uq/s-l225.webp")
f2.items.create(name: "Mulan Imperial Beauty Doll By Mattel", url: "https://www.ebay.com/itm/Mulan-Imperial-Beauty-Doll-By-Mattel/224399197445?hash=item343f3c0505:g:XC4AAOSw8b1gUtq1", price: 40.00, img: "https://i.ebayimg.com/thumbs/images/g/XC4AAOSw8b1gUtq1/s-l225.webp")
f2.items.create(name: "DISNEY’S MULAN HEARTS OF HONOR MATTEL 1997 VINTAGE NIB NRFB", url: "https://www.ebay.com/itm/DISNEY-S-MULAN-HEARTS-OF-HONOR-MATTEL-1997-VINTAGE-NIB-NRFB/254904400738?_trkparms=ispr%3D1&hash=item3b597c7b62:g:p-sAAOSw2bpgJakN&amdata=enc%3AAQAFAAACcBaobrjLl8XobRIiIML1V4Imu%252Fn%252BzU5L90Z278x5ickkrDx%252B2NLp21dg6hHbHAkGMfNjSqxakycVGNNz758kI%252F17bCpOLPoWofR8WyLvUCoZdRs4uyEGjVPrWHn360EX0fjrS13C5u6GbAC7zIGvNyDorsCYsXuR9EUF7PGCgsb5%252Bkjm5gNZTIcReqLKuZvCoam9OW2Y0hg86mAEbfqnjI911F6oC4uMMINvG0zwXnrz6LhVRxeSIqt9Zj%252BoUKOcMG5NND7Bc1T74%252FYsfyMNRH5eHTV3OP094SgHvmTuGF0ZhF4FqfAXWJFoLLfbgmrhYauToA3t1RMR%252B14v3QOTfF4%252BI8tdpUPytjnRPXwTHn80IO1fVf79xOpRk6vmCpcKutMcdQmnLVD%252F1ZtlRRRlzOuHOpuy3Fchk4yV0fu%252FLUjxOMmv%252BxHG34b4VJTF5pyNMsNqIfp5S%252FNF7d1nWiIW35b4DfZKy6bJ7GqMcQxsuixjAjzbJslpmBQWTaR%252BkKIvk7jUgWFe9g9HKoM5IbhIJxxRuA%252BMgIbzj72eZ8F%252BM%252FiZ%252B5f92jJMrT2mQReCnPAk0GLurfKwkSHQUUgOGj1klLLutu%252BEv3Ie8LbJW%252B4aIidxK%252FhIZ4du83VzgxcL7T%252BLVQTfnf3BzpQyEuZEyo2%252BFvj%252FbhzplG%252BU9T1uiIzeCY%252B5ukOmi5U%252FVM0k7b2ioe%252BjiahBmNgf9%252BPccZKAqofhQy94WNUi4qGAd%252BifkBVcQ3n4ZrgM2nTyC5uyF7ZKDPNcg3lbRIy7Mkj62%252B%252FY2%252BKGdzsFC7IHcBWGuMQ8zR7KfrZEEXALs7vuPq6pAgJ5qKxxQg%253D%253D%7Ccksum%3A254904400738f8f1a9740f0a4c7b81ca5e43ad5856a4%7Campid%3APL_CLK%7Cclp%3A2334524", price: 41.88, img: "https://i.ebayimg.com/thumbs/images/g/p-sAAOSw2bpgJakN/s-l225.webp")
f2.items.create(name: "Mattel MULAN Disney Princess Blossom Beauty 2004 Barbie Doll G7947 MINT", url: "https://www.ebay.com/itm/Mattel-MULAN-Disney-Princess-Blossom-Beauty-2004-Barbie-Doll-G7947-MINT/184723538419?epid=2256058771&hash=item2b026181f3:g:dRQAAOSwO1pgWbWw", price: 22.99, img: "https://i.ebayimg.com/thumbs/images/g/dRQAAOSwO1pgWbWw/s-l225.webp")
mom.folders.find_by(name: "main").items.create(name: "K2 Camano M Carbon Inline Skate Soft Boot Roller Blades Mens Size 14 Us", url:"https://www.ebay.com/itm/K2-Camano-M-Carbon-Inline-Skate-Soft-Boot-Roller-Blades-Mens-Size-14-Us/154388169155?hash=item23f24081c3:g:3IgAAOSwOCVgW7f8", price: 25.00, img:"https://i.ebayimg.com/thumbs/images/g/3IgAAOSwOCVgW7f8/s-l225.webp")

puts "seeding done"