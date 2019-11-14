# take the first number
# take modifier
# take the last number
# puts@result
# error checking for user input
# user input and modifiers should be checked for proper input type
# the@result should set  @first_modifier and allow for another modifier and last number so@result continues +
# + to build until the user decides to clear the calculator
# - make + - * / work
# - make clear work

def menu
    puts "This is a calculator"
    puts "What is the first number?"
    first_modifier = gets.strip
    if first_modifier =~ /\D/
        error_input
    end
    puts "What is the operator?"
    operator = gets.strip.to_s
    puts "What is the second number?"
    second_modifier = gets.strip
    if second_modifier =~ /\D/
        error_input
    end
    calculating

    case operator
    when '+'
        @result = first_modifier.to_f + second_modifier.to_f
    when '-'
        @result = first_modifier.to_f - second_modifier.to_f
    when '/'
        @result = first_modifier.to_f / second_modifier.to_f
    when '*'
        @result = first_modifier.to_f * second_modifier.to_f
    else 
      puts "This calculator does not support that as an operator"
      puts "Please use +, -, /, or *"
      menu
    end
end

def error_input
    puts "That is not a number."
    puts "Try again."
    menu
end

def calculating
   puts "Calculating..."
end

menu
calculating
puts @result


