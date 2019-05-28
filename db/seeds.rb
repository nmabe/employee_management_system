Employee.create!(name: "Nkululeko Mokgele", 
            dob: 29.year.ago, 
            email: "nkulimokgele@gmail.com",
            address: "37843 Thabethe street Zone 3 Dube 1982",
            gender: "Male",
            job_id: 23894)

50.times do |n|
    f_name = Faker::Name.first_name
    s_name = Faker::Name.last_name
    gender = ['Male', 'Female']
    Employee.create!(name: "#{f_name} #{s_name}", 
        dob: (rand(1) + 29).year.ago, 
        email: "#{f_name}.#{n}@yourdomain.net",
        address: Faker::Address.full_address,
        gender: gender[rand(0..1)],
        job_id: Faker::Number.number(5))
        
end