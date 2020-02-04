require 'csv'



#puts 'Creating indiens....'
#Indien.create(name: 'Sidi', surname: 'Mazou', birthdate:'2011-09-09', ancestor: 2, latitude: -27.384998, longitude: 7.129795)
#Indien.create(name: 'Bachir', surname: 'Tri', birthdate:'1990-05-08', ancestor: 3, latitude: 84.164934, longitude: 0.478504)
#Indien.create(name: 'Salim', surname: 'Touzzla', birthdate:'1855-05-08', ancestor: 1, latitude: -14.316814, longitude: 7.459225)



puts 'creating indiens from csv'

CSV.foreach(Rails.root.join('/Users/nil/code/KINOBA/Tribe/db/mydb.csv'), headers: true) do |row|
    Indien.create! do |model|
      model.name = row[1]
      model.surname = row[2]
      model.birthdate = row[3]
      model.ancestor = row[4]
      model.latitude = row[5]
      model.longitude = row[6]
    end
  end