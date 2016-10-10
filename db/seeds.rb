admin = User.create!(name: "admin",role:5, email: "admin@admin.com",password:"johnte12")
finances = User.create!(name: "finances ",role: 3 , email: "finances@finances.com",password:"johnte12")
administration = User.create!(name: "administration",role:1, email: "administration@administration.com",password:"johnte12")
cashier= User.create!(name: "cashier",role:2, email: "cashier@cashier.com",password:"johnte12")
Parent.delete_all 
Student.delete_all
Fee.delete_all
Grade.delete_all
Account.delete_all
Receipt.delete_all
    50.times do |i|
            Parent.create!(
                 name: Faker::Name.first_name,
                 surname: Faker::Name.last_name,
                 phone_number: Faker::PhoneNumber.cell_phone)
             end

        50.times do |i|
             Student.create!(
                  name: Faker::Name.first_name,
                  surname: Faker::Name.last_name,
                  parent_id:"{i+1}")
              end

         12.times do |i|
              Grade.create!(
                   name: "Grade {i+1}" 
                   )
               end
          12.times do |i|
                Fee.create!(grade_id: "{i+1}",
                              price: "{i*5+50}")
                  
                 end





          12.times do |i|
               Account.create!(
                    student_id: "{i+1}",
                    grade_id: "{i+1}",
                    amount: "{i*5+50}")
                end

          

