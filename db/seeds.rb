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
             phone: '123456',
             address: '123456',
             password:'1234567',
             password_confirmation:'1234567',
             children: '1',
             trimester: '2',
             dob: '2000-01-01',
             mother: true})

User.create({first_name: 'Smita',
            last_name: 'Ingleshwar',
            email: 'smita@yahoo.com',
            phone: '123456',
            address: '123456',
            password:'1234567',
            password_confirmation:'1234567',
            children: '1',
            trimester: '2',
            dob: '2000-01-01',
            mother: true})

User.create({first_name: 'Henry',
            last_name: 'Smith',
            email: 'henry@yahoo.com',
            phone: '123456',
            address: '123456',
            password:'1234567',
            password_confirmation:'1234567',
            doc_qual: 'qwer',
            regis_number: '9876',
            mother: false})
