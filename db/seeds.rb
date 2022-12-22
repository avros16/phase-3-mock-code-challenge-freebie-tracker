puts "Creating companies..." #leave one unassigned 
c1= Company.create(name: "Google", founding_year: 1998)
c2= Company.create(name: "Facebook", founding_year: 2004)
c3= Company.create(name: "Dunder Mifflin", founding_year: 2002)
c4= Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..." #leave one unassigned 
d1= Dev.create(name: "Rick")
d2= Dev.create(name: "Morty")
d3= Dev.create(name: "Mr. Meseeks")
d4= Dev.create(name: "Gazorpazop")

puts "Creating freebies..." 

Freebie.create(item_name: "Keychain", value: 2, company_id: c1.id, dev_id: d2.id)
Freebie.create(item_name: "Magnet", value: 2, company_id: c2.id, dev_id: d2.id)
Freebie.create(item_name: "Phone Charger", value: 10, company_id: c4.id, dev_id: d2.id)
Freebie.create(item_name: "T-shirt", value: 1, company_id: c2.id, dev_id: d1.id)
Freebie.create(item_name: "Macbook", value: 4, company_id: c2.id, dev_id: d3.id)
Freebie.create(item_name: "Keyboard", value: 60, company_id: c3.id, dev_id: d3.id)



puts "Seeding done!"
