# Empty categories and items
Category.delete_all
OrderDetail.delete_all
Item.delete_all
Order.delete_all
Organization.delete_all
OrganizationUser.delete_all
User.delete_all

# Create organizations
org_stanford = Organization.create(name: "Stanford Hospital", address: "300 Pasteur Drive, Stanford, CA 94305",
                                   phone_number: "(650) 723-4000", email: "info@stanfordhospital.com")
org_kaiser   = Organization.create(name: "Kaiser Permanente Mountain View",
                                   address: "555 Castro St, Mountain View, CA 94041",
                                   phone_number: "(650) 903-3000", email: "info@kaisermountview.com")
org_alameda  = Organization.create(name: "Alameda Hospital", address: "2070 Clinton Ave, Alameda, CA 94501",
                                   phone_number: "(510) 522-3700", email: "info@alamedaahs.org")

# Create site users
User.create(name: "Site Admin", email: "site_admin@fake.com", password: "password",
            phone_number: "408-555-1234", address: "123 Main Street, San Jose, CA, 95123",
            role: "admin")

User.create(name: "Site User", email: "site_user@fake.com", password: "password",
            phone_number: "408-555-4321", address: "321 Main Street, San Jose, CA, 95321",
            role: "none")

# Create organization users
alameda_admin = User.create(name: "Alameda Admin", email: "alameda_admin@fake.com", password: "password",
                            phone_number: "408-555-1234", address: "123 Main Street, San Jose, CA, 95123",
                            role: "none")

alameda_user = User.create(name: "Alameda User", email: "alameda_user@fake.com", password: "password",
                           phone_number: "408-555-1234", address: "123 Main Street, San Jose, CA, 95123",
                           role: "none")

# Associate users to organizations
OrganizationUser.create organization: org_alameda, user: alameda_admin, role: "admin"
OrganizationUser.create organization: org_alameda, user: alameda_user, role: "none"

# Create categories
category_adult_underwear = Category.create(description: "Adult's Underwear")
category_kids_underwear = Category.create(description: "Kids' Underwear")
category_socks = Category.create(description: "Socks")
category_adult_shirts = Category.create(description: "Adults' Shirts")
category_kids_shirts = Category.create(description: "Kids' Shirts")
category_sweaters = Category.create(description: "Sweatshirts/Sweaters")
category_sweatsuits = Category.create(description: "Sweat Suits")
category_pants = Category.create(description: "Pants")
category_shoes = Category.create(description: "Flip-Flops/Slippers")
category_misc = Category.create(description: "Miscellaneous")

# Just a set of numbers to use for an 'In Stock' value
random_numbers = (0..40).to_a

# Create items

items = Item.create([
                      { description: "Women - Underwear - XS (5)", category_id: category_adult_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Women - Underwear - S (6)", category_id: category_adult_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Women - Underwear - M (7)", category_id: category_adult_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Women - Underwear - L (8)", category_id: category_adult_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Women - Underwear - 1X (9)", category_id: category_adult_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Women - Underwear - 2X (10)", category_id: category_adult_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Women - Underwear - 3X (11)", category_id: category_adult_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Women - Underwear - 4X (12)", category_id: category_adult_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Women - Bra - S (32)", category_id: category_adult_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Women - Bra - M (34)", category_id: category_adult_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Women - Bra - L (36)", category_id: category_adult_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Women - Bra - 1X (38)", category_id: category_adult_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Women - Bra - 2L (40-42)", category_id: category_adult_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Women - Bra - 3X (44)", category_id: category_adult_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Women - Bra - 4X", category_id: category_adult_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Men - Underwear - XS (28-30)", category_id: category_adult_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Men - Underwear- S (32-33)", category_id: category_adult_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Men - Underwear - M (34-36)", category_id: category_adult_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Men - Underwear - L (38-40)", category_id: category_adult_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Men - Underwear - 1X (40-42)", category_id: category_adult_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Girls - Underwear - (2-3)", category_id: category_kids_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Girls - Underwear - (4-5)", category_id: category_kids_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Girls - Underwear - (6)", category_id: category_kids_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Girls - Underwear - (7-8)", category_id: category_kids_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Girls - Underwear - (10-12)", category_id: category_kids_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Girls - Underwear - (14)", category_id: category_kids_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Girls - Underwear - (16)", category_id: category_kids_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Boys - Underwear - XXS (2-3T)", category_id: category_kids_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Boys - Underwear - XS (4-5)", category_id: category_kids_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Boys - Underwear - S", category_id: category_kids_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Boys - Underwear - M", category_id: category_kids_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Boys - Underwear - L", category_id: category_kids_underwear.id,
                        current_quantity: random_numbers.sample },
                      { description: "Boys - Underwear - XL", category_id: category_kids_underwear.id,
                        current_quantity: random_numbers.sample },

                      { description: "Women - Socks", category_id: category_socks.id,
                        current_quantity: random_numbers.sample },
                      { description: "Men - Socks", category_id: category_socks.id,
                        current_quantity: random_numbers.sample },
                      { description: "\"Cozy\" (winter) Socks", category_id: category_socks.id,
                        current_quantity: random_numbers.sample },
                      { description: "Girls - Socks", category_id: category_socks.id,
                        current_quantity: random_numbers.sample },
                      { description: "Boys - Socks", category_id: category_socks.id,
                        current_quantity: random_numbers.sample },

                      { description: "Women - Shirt - XS", category_id: category_adult_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Women - Shirt - S", category_id: category_adult_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Women - Shirt - M", category_id: category_adult_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Women - Shirt - L", category_id: category_adult_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Women - Shirt - 1X", category_id: category_adult_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Women - Shirt - 2X", category_id: category_adult_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Women - Shirt - 3X", category_id: category_adult_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Women - Shirt - 4X", category_id: category_adult_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Shirt - S", category_id: category_adult_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Shirt - M", category_id: category_adult_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Shirt - L", category_id: category_adult_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Shirt - 1X", category_id: category_adult_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Shirt - 2X", category_id: category_adult_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Shirt - 3X", category_id: category_adult_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Shirt - 4X", category_id: category_adult_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Youth - Shirt - XS", category_id: category_kids_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Youth - Shirt - S", category_id: category_kids_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Youth - Shirt - M", category_id: category_kids_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Youth - Shirt - L", category_id: category_kids_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Youth - Shirt - 1X", category_id: category_kids_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Shirt - 4T", category_id: category_kids_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Shirt - 5T", category_id: category_kids_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Shirt - XS", category_id: category_kids_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Shirt - S", category_id: category_kids_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Shirt - M", category_id: category_kids_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Shirt - L", category_id: category_kids_shirts.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Shirt - 1X", category_id: category_kids_shirts.id,
                        current_quantity: random_numbers.sample },

                      { description: "Adult - Sweatshirt/Sweater - XS", category_id: category_sweaters.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Sweatshirt/Sweater - S", category_id: category_sweaters.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Sweatshirt/Sweater - M", category_id: category_sweaters.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Sweatshirt/Sweater - L", category_id: category_sweaters.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Sweatshirt/Sweater - 1X", category_id: category_sweaters.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Sweatshirt/Sweater - 2X", category_id: category_sweaters.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Sweatshirt/Sweater - 4T", category_id: category_sweaters.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Sweatshirt/Sweater - XS", category_id: category_sweaters.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Sweatshirt/Sweater - S", category_id: category_sweaters.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Sweatshirt/Sweater - M", category_id: category_sweaters.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Sweatshirt/Sweater - L", category_id: category_sweaters.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Sweatshirt/Sweater - 1X", category_id: category_sweaters.id,
                        current_quantity: random_numbers.sample },

                      { description: "Adult - Sweat Suit - S", category_id: category_sweatsuits.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Sweat Suit - M", category_id: category_sweatsuits.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Sweat Suit - L", category_id: category_sweatsuits.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Sweat Suit - 1X", category_id: category_sweatsuits.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Sweat Suit - 2X", category_id: category_sweatsuits.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Sweat Suit - 3X", category_id: category_sweatsuits.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Sweat Suit - 4X", category_id: category_sweatsuits.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Sweat Suit - XXS (2-3)", category_id: category_sweatsuits.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Sweat Suit - XS (4-5)", category_id: category_sweatsuits.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Sweat Suit - S (6-7)", category_id: category_sweatsuits.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Sweat Suit - M (8-11)", category_id: category_sweatsuits.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Sweat Suit - L (12-13)", category_id: category_sweatsuits.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Sweat Suit - 1X (14-16)", category_id: category_sweatsuits.id,
                        current_quantity: random_numbers.sample },

                      { description: "Adult - Pants - XS", category_id: category_pants.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Pants - S", category_id: category_pants.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Pants - M", category_id: category_pants.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Pants - L", category_id: category_pants.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Pants - 1X", category_id: category_pants.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Pants - 2X", category_id: category_pants.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Pants - 3X", category_id: category_pants.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Pants - 4X", category_id: category_pants.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Pants - XS", category_id: category_pants.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Pants - S", category_id: category_pants.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Pants - M", category_id: category_pants.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Pants - L", category_id: category_pants.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Pants - 1X", category_id: category_pants.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Leggings (One Size Fits All)", category_id: category_pants.id,
                        current_quantity: random_numbers.sample },

                      { description: "Adult - Flip-flops - XXS", category_id: category_shoes.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Flip-flops - XS", category_id: category_shoes.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Flip-flops - S (6-7)", category_id: category_shoes.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Flip-flops - M (7-8)", category_id: category_shoes.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Flip-flops - L (9-10)", category_id: category_shoes.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Flip-flops - 1X (11-12)", category_id: category_shoes.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Flip-flops - XS (4-5)", category_id: category_shoes.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Flip-flops - S (6-7)", category_id: category_shoes.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Flip-flops - M (7-8)", category_id: category_shoes.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Flip-flops - L (9-10)", category_id: category_shoes.id,
                        current_quantity: random_numbers.sample },
                      { description: "Kids - Flip-flops - 1X (11-12)", category_id: category_shoes.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Slippers - S (5-6)", category_id: category_shoes.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Slippers - M (7-8)", category_id: category_shoes.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Slippers - L (9-10)", category_id: category_shoes.id,
                        current_quantity: random_numbers.sample },
                      { description: "Adult - Slippers - 1X", category_id: category_shoes.id,
                        current_quantity: random_numbers.sample },

                      { description: "Blanket", category_id: category_misc.id,
                        current_quantity: random_numbers.sample },
                      { description: "Hat", category_id: category_misc.id,
                        current_quantity: random_numbers.sample },
                      { description: "Gloves", category_id: category_misc.id,
                        current_quantity: random_numbers.sample },
                      { description: "Scarf", category_id: category_misc.id,
                        current_quantity: random_numbers.sample },
                      { description: "Tote", category_id: category_misc.id,
                        current_quantity: random_numbers.sample },
                      { description: "Journal", category_id: category_misc.id,
                        current_quantity: random_numbers.sample },
                      { description: "Book", category_id: category_misc.id,
                        current_quantity: random_numbers.sample },
                      { description: "Dollar Tree Card", category_id: category_misc.id,
                        current_quantity: random_numbers.sample },
                      { description: "Tooth Brush", category_id: category_misc.id,
                        current_quantity: random_numbers.sample },
                      { description: "Toothpaste", category_id: category_misc.id,
                        current_quantity: random_numbers.sample },
                      { description: "Dental Floss", category_id: category_misc.id,
                        current_quantity: random_numbers.sample },
                      { description: "Stuffed Animal", category_id: category_misc.id,
                        current_quantity: random_numbers.sample },
                      { description: "DVD", category_id: category_misc.id,
                        current_quantity: random_numbers.sample },
                      { description: "Comb", category_id: category_misc.id,
                        current_quantity: random_numbers.sample },
                      { description: "$5.00 Gift Card", category_id: category_misc.id,
                        current_quantity: random_numbers.sample },
                      { description: "Other", category_id: category_misc.id,
                        current_quantity: random_numbers.sample }
                    ])

order1 = Order.create(organization_id: org_kaiser.id, user_id: alameda_admin.id,
                      order_date: "2016-01-27", status: "pending")
order2 = Order.create(organization_id: org_alameda.id, user_id: alameda_admin.id,
                      order_date: "2016-01-26", status: "approved")
order3 = Order.create(organization_id: org_stanford.id, user_id: alameda_admin.id,
                      order_date: "2016-01-25", status: "shipped")
order4 = Order.create(organization_id: org_alameda.id, user_id: alameda_admin.id,
                      order_date: "2016-01-22", status: "filled")

OrderDetail.create([
                     { order_id: order1.id, item_id: items[1].id, quantity: 12 },
                     { order_id: order1.id, item_id: items[10].id, quantity: 20 },
                     { order_id: order1.id, item_id: items[30].id, quantity: 25 },
                     { order_id: order1.id, item_id: items[20].id, quantity: 5 },
                     { order_id: order2.id, item_id: items[5].id, quantity: 25 },
                     { order_id: order2.id, item_id: items[35].id, quantity: 35 },
                     { order_id: order3.id, item_id: items[32].id, quantity: 10 },
                     { order_id: order3.id, item_id: items[18].id, quantity: 30 },
                     { order_id: order3.id, item_id: items[27].id, quantity: 15 },
                     { order_id: order4.id, item_id: items[22].id, quantity: 35 },
                     { order_id: order4.id, item_id: items[6].id, quantity: 10 },
                     { order_id: order4.id, item_id: items[17].id, quantity: 20 }
                   ])
