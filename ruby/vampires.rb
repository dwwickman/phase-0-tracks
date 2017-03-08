puts "How many employees will be Interveiwed?"
number_interviewed = gets.chomp.to_i
interview_count = 1

while interview_count <= number_interviewed
	allergy_loop = true
	puts "What is your name?"
	name = gets.chomp
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born?"
	year_born = gets.chomp.to_i
	actual_age = 2017 - year_born
	if age == actual_age
		correct_age = true
	else
		correct_age = false
	end
	puts "Our company cafeteria serves garlic bread.  Should we order some for you (Yes/No)?"
	garlic_bread_response = gets.chomp
	if garlic_bread_response == "Yes"
		garlic_bread_wanted = true
	else
		garlic_bread_wanted = false
	end
	puts "Would you like to enroll in the company's health insurance? (Yes/No)"
	health_insurance_resonse = gets.chomp
	if health_insurance_resonse == "Yes"
		health_insurance_wanted = true
	else
		health_insurance_wanted = false
	end
	while allergy_loop
		puts "Plese list your alergies one a time.  Please type done when finished"
		allergy = gets.chomp
		if allergy == "sunshine"
			allergy_sunshine = true
			allergy_loop = false
		elsif allergy == "done"
			allergy_loop = false
		end
	end
p name
p age
p year_born
p correct_age
p garlic_bread_response
p garlic_bread_wanted
p health_insurance_resonse
p health_insurance_wanted

if name == ("Drake Cula" || name == "Tu Fang") && !allergy_sunshine
	puts "Interview Canidate:  #{interview_count}"
	puts "defintely a vampire"
elsif (!correct_age && !garlic_bread_wanted && !health_insurance_wanted) && !allergy_sunshine
	puts "Interview Canidate:  #{interview_count}"
	puts "Almost certainly a vampire"
elsif (!correct_age && (!garlic_bread_wanted || !health_insurance_wanted)) || allergy_sunshine
	puts "Interview Canidate:  #{interview_count}"
	puts "Probably a vampire"
elsif correct_age && (garlic_bread_wanted || health_insurance_wanted)
	puts "Interview Canidate:  #{interview_count}"
	puts "Probably not a vampire"
else
	puts "Interview Canidate:  #{interview_count}"
	puts "Results inconclusive"
end
interview_count = interview_count + 1 
end
puts "Actually, nevermind! What do these questions have to do with anything? Lets all be freinds"



