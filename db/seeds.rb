# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name:"Bob", password:"Bob111")
u2 = User.create(name:"Jim", password:"Jim111")
u3 = User.create(name:"Joe", password:"Joe111")
u4 = User.create(name:"Pam", password:"Pam111")
f1 = u1.folders.find_by(name: "main")
f1.items.create(name:"item", url:"website.com", price:34.23, img:"pictre.com")

mom = User.create(name: "Mom", password: "test123")
f2 = mom.folders.create(name: "mulan barbies",folder_type: "saveditems")
f2.items.create(name: "Mulan Disney Store Barbie Fashion Doll 2004 Used", url: "https://www.ebay.com/itm/Mulan-Disney-Store-Barbie-Fashion-Doll-2004-Used/274728952762?hash=item3ff71f23ba:g:K~wAAOSw0aBgV9uq", price: 8.00, img: "https://i.ebayimg.com/thumbs/images/g/K~wAAOSw0aBgV9uq/s-l225.webp")
f2.items.create(name: "Mulan Imperial Beauty Doll By Mattel", url: "https://www.ebay.com/itm/Mulan-Imperial-Beauty-Doll-By-Mattel/224399197445?hash=item343f3c0505:g:XC4AAOSw8b1gUtq1", price: 40.00, img: "https://i.ebayimg.com/thumbs/images/g/XC4AAOSw8b1gUtq1/s-l225.webp")
f2.items.create(name: "DISNEY’S MULAN HEARTS OF HONOR MATTEL 1997 VINTAGE NIB NRFB", url: "https://www.ebay.com/itm/DISNEY-S-MULAN-HEARTS-OF-HONOR-MATTEL-1997-VINTAGE-NIB-NRFB/254904400738?_trkparms=ispr%3D1&hash=item3b597c7b62:g:p-sAAOSw2bpgJakN&amdata=enc%3AAQAFAAACcBaobrjLl8XobRIiIML1V4Imu%252Fn%252BzU5L90Z278x5ickkrDx%252B2NLp21dg6hHbHAkGMfNjSqxakycVGNNz758kI%252F17bCpOLPoWofR8WyLvUCoZdRs4uyEGjVPrWHn360EX0fjrS13C5u6GbAC7zIGvNyDorsCYsXuR9EUF7PGCgsb5%252Bkjm5gNZTIcReqLKuZvCoam9OW2Y0hg86mAEbfqnjI911F6oC4uMMINvG0zwXnrz6LhVRxeSIqt9Zj%252BoUKOcMG5NND7Bc1T74%252FYsfyMNRH5eHTV3OP094SgHvmTuGF0ZhF4FqfAXWJFoLLfbgmrhYauToA3t1RMR%252B14v3QOTfF4%252BI8tdpUPytjnRPXwTHn80IO1fVf79xOpRk6vmCpcKutMcdQmnLVD%252F1ZtlRRRlzOuHOpuy3Fchk4yV0fu%252FLUjxOMmv%252BxHG34b4VJTF5pyNMsNqIfp5S%252FNF7d1nWiIW35b4DfZKy6bJ7GqMcQxsuixjAjzbJslpmBQWTaR%252BkKIvk7jUgWFe9g9HKoM5IbhIJxxRuA%252BMgIbzj72eZ8F%252BM%252FiZ%252B5f92jJMrT2mQReCnPAk0GLurfKwkSHQUUgOGj1klLLutu%252BEv3Ie8LbJW%252B4aIidxK%252FhIZ4du83VzgxcL7T%252BLVQTfnf3BzpQyEuZEyo2%252BFvj%252FbhzplG%252BU9T1uiIzeCY%252B5ukOmi5U%252FVM0k7b2ioe%252BjiahBmNgf9%252BPccZKAqofhQy94WNUi4qGAd%252BifkBVcQ3n4ZrgM2nTyC5uyF7ZKDPNcg3lbRIy7Mkj62%252B%252FY2%252BKGdzsFC7IHcBWGuMQ8zR7KfrZEEXALs7vuPq6pAgJ5qKxxQg%253D%253D%7Ccksum%3A254904400738f8f1a9740f0a4c7b81ca5e43ad5856a4%7Campid%3APL_CLK%7Cclp%3A2334524", price: 41.88, img: "https://i.ebayimg.com/thumbs/images/g/p-sAAOSw2bpgJakN/s-l225.webp")
f2.items.create(name: "Mattel MULAN Disney Princess Blossom Beauty 2004 Barbie Doll G7947 MINT", url: "https://www.ebay.com/itm/Mattel-MULAN-Disney-Princess-Blossom-Beauty-2004-Barbie-Doll-G7947-MINT/184723538419?epid=2256058771&hash=item2b026181f3:g:dRQAAOSwO1pgWbWw", price: 22.99, img: "https://i.ebayimg.com/thumbs/images/g/dRQAAOSwO1pgWbWw/s-l225.webp")
mom.folders.find_by(name: "main").items.create(name: "K2 Camano M Carbon Inline Skate Soft Boot Roller Blades Mens Size 14 Us", url:"https://www.ebay.com/itm/K2-Camano-M-Carbon-Inline-Skate-Soft-Boot-Roller-Blades-Mens-Size-14-Us/154388169155?hash=item23f24081c3:g:3IgAAOSwOCVgW7f8", price: 25.00, img:"https://i.ebayimg.com/thumbs/images/g/3IgAAOSwOCVgW7f8/s-l225.webp")

puts "first seeding done"


search = User.create(name: "Search", password:"bingobongo")
sfolder1 = search.folders.create(name: "fullmetal-alchemist-manga", folder_type: "search")
sfolder1.items.create(name: "Fullmetal Alchemist Manga Assortment - Select Volumes", url: "https://www.ebay.com/itm/Fullmetal-Alchemist-Manga-Assortment-Select-Volumes/393139965437?hash=item5b88f7cdfd:g:8ekAAOSwLrNgLvgh", img: "https://i.ebayimg.com/thumbs/images/g/8ekAAOSwLrNgLvgh/s-l225.webp", price: 9.99) 
sfolder1.items.create(name: "Fullmetal Alchemist Manga x4 (3-In-1) Vol 1-12 4 Omnibus Editions Hiromu Arakawa", url: "https://www.ebay.com/itm/Fullmetal-Alchemist-Manga-x4-3-In-1-Vol-1-12-4-Omnibus-Editions-Hiromu-Arakawa/274727850132?hash=item3ff70e5094:g:sEsAAOSwBH9gVp7W", img: "https://i.ebayimg.com/thumbs/images/g/sEsAAOSwBH9gVp7W/s-l225.webp", price: 40.00) 
sfolder1.items.create(name: "Fullmetal alchemist manga 12 Book Lot", url: "https://www.ebay.com/itm/Fullmetal-alchemist-manga-12-Book-Lot/313463766408?hash=item48fbe57d88:g:mkoAAOSwRPhgV8vA", img: "https://i.ebayimg.com/thumbs/images/g/mkoAAOSwRPhgV8vA/s-l225.webp", price: 69.99) 
sfolder1.items.create(name: "Fullmetal Alchemist Manga Books 12 - 15 by Hiromu Arakawa ~ English ~ NEW", url: "https://www.ebay.com/itm/Fullmetal-Alchemist-Manga-Books-12-15-by-Hiromu-Arakawa-English-NEW/324500231139?hash=item4b8db893e3:g:mP8AAOSwcSlgOaO8", img: "https://i.ebayimg.com/thumbs/images/g/mP8AAOSwcSlgOaO8/s-l225.webp", price: 28.00) 
sfolder1.items.create(name: "Fullmetal Alchemist Vol. 1-27 English Manga Complete Set", url: "https://www.ebay.com/itm/Fullmetal-Alchemist-Vol-1-27-English-Manga-Complete-Set/203309346498?hash=item2f562e6ec2:g:nEQAAOSw3JBgBKoZ", img: "https://www.ebay.com/itm/Fullmetal-Alchemist-Vol-1-27-English-Manga-Complete-Set/203309346498?hash=item2f562e6ec2:g:nEQAAOSw3JBgBKoZ", price: 250.00) 
sfolder1.items.create(name: "Fullmetal Alchemist Volumes 1-17 MANGA VIZ", url: "https://www.ebay.com/itm/Fullmetal-Alchemist-Volumes-1-17-MANGA-VIZ/353423591565?hash=item5249b0088d:g:n2sAAOSwZt1gUo3g", img: "https://i.ebayimg.com/thumbs/images/g/n2sAAOSwZt1gUo3g/s-l225.webp", price: 175.00) 
sfolder2 = search.folders.create(name: "rollerblades-mens-13", folder_type:"search")
sfolder2.items.create(name: "Rollerblade Zetra 303 Mens Fitness Inline Skates, Size 13 - Black and Orange", url: "https://www.ebay.com/itm/Rollerblade-Zetra-303-Mens-Fitness-Inline-Skates-Size-13-Black-and-Orange/203308741843?hash=item2f562534d3:g:QSQAAOSw~SZgUQ3T", img: "https://i.ebayimg.com/thumbs/images/g/QSQAAOSw~SZgUQ3T/s-l225.webp", price: 25.00)
sfolder2.items.create(name: "Ultra Wheels Rollerblades Mens Size 13", url: "https://www.ebay.com/itm/Ultra-Wheels-Rollerblades-Mens-Size-13/294075884715?hash=item447849e4ab:g:X7EAAOSwfK9gVpEI", img: "https://i.ebayimg.com/thumbs/images/g/X7EAAOSwfK9gVpEI/s-l225.webp", price: 44.00)
sfolder2.items.create(name: "Rollerblade 07958600816 Zetrablade Inline Skates - Black Men’s Size 13.", url: "https://www.ebay.com/itm/Rollerblade-07958600816-Zetrablade-Inline-Skates-Black-Men-s-Size-13/303931750429?epid=25025881081&hash=item46c3be781d:g:vPgAAOSwSqRgWkB0", img: "https://i.ebayimg.com/thumbs/images/g/vPgAAOSwSqRgWkB0/s-l225.webp", price: 46.00)
sfolder2.items.create(name: "vtg roces cdg paris mens 5 wheel inline skates roller blades size 13 black", url: "https://www.ebay.com/itm/vtg-roces-cdg-paris-mens-5-wheel-inline-skates-roller-blades-size-13-black/353431915774?hash=item524a2f0cfe:g:5tEAAOSwIZpgXDAy", img: "https://i.ebayimg.com/thumbs/images/g/5tEAAOSwIZpgXDAy/s-l225.webp", price: 95.00)


puts "dummy seeding done"