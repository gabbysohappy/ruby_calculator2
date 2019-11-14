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
    @first_modifier = gets.strip.to_f
    puts "What is the operator?"
    operator = gets.strip.to_s
    puts "What is the second number?"
    @second_modifier = gets.strip.to_f 
    calculating

    if @first_modifier = /\D/
        puts "That is not a number."
        puts "Try again."
        @first_modifier        
    end
     
    case operator
    when '+'
        addition
    when '-'
        subtraction
    when '/'
        division
    when '*'
        multiplication
    else 
      puts "This calculator does not support that as an operator"
      puts "Please use +, -, /, or *"
      operator
    end
end

def addition
    @result = @first_modifier + @second_modifier
end

def subtraction
    @result = @first_modifier - @second_modifier
end

def division
    @result = @first_modifier / @second_modifier
end

def multiplication
    @result = @first_modifier * @second_modifier
end

def calculating
   puts "Calculating..."
end

menu
calculating
puts @result


