# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin

 #render text: ('1 =>' + params[:checkbox_1].to_s + ' ' + '2=> ' + params[:checkbox_2].to_s + ' ' + '3=>' +  params[:checkbox_3].to_s)

t = Test.find(32)

w = Workspace.create(name: 'subsuelo')


ElectionWorkspace.create(test: t, workspace: w)
=end
def too_bool number
	number == 1
end
unless Patient.all.exists?
	100.times do
		p = Patient.new(name: Faker::Name.first_name, paternal: Faker::Name.last_name, maternal: Faker::Name.last_name, dni: Faker::Number.number(8), date_of_birth: Faker::Date.between(40.years.ago, 20.years.ago), sex: too_bool(rand(2)), medical_record: Faker::Number.number(5), home: Faker::Address.street_address, place_of_birth: Faker::Address.city, phone: 9.to_s + Faker::Number.number(8))
		p.save
	end
end

Employee.create(name: 'fabian', paternal: 'peña', maternal:'jacobo', username: 'sis_fabian', password: '81848133')
