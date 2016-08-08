# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create({first_name: 'Chau',
             last_name: 'Nguyen',
             email: 'chau@yahoo.com',
             phone: '647-232-0000',
             address: '220 King Street West, Toronto',
             password:'1234567',
             password_confirmation:'1234567',
             children: '1',
             trimester: '1',
             dob: '1980-01-01',
             mother: true})


User.create({first_name: 'Smita',
            last_name: 'Ingleshwar',
            email: 'smita@yahoo.com',
            phone: '647-1122-2233',
            address: '220 Queen Street West, Toronto',
            password:'1234567',
            password_confirmation:'1234567',
            children: '1',
            trimester: '1',
            dob: '1988-01-01',
            mother: true})

User.create({first_name: 'Henry',
            last_name: 'Smith',
            email: 'henry@yahoo.com',
            phone: '647-456-6789',
            address: '123 Simcoe, Toronto, ON',
            password:'1234567',
            password_confirmation:'1234567',
            doc_qual: 'M.D., Obstetrics and Gynecology, 1997',
            regis_number: '9999-9999-99',
            mother: false})
