
def menu
    puts "This is a calculator"
    puts "What is the first number?"
    first = first_number
    puts "What is the operator?"
    operator = gets.strip.to_s
    puts "What is the second number?"
    second = second_number  
    puts "Calculating..."
    
    case operator
    when '+'
        @result = first.to_f + second.to_f
    when '-'
        @result = first.to_f - second.to_f
    when '/'
        @result = first.to_f / second.to_f
    when '*'
        @result = first.to_f * second.to_f
    when 'Clear'
        goodbye
    else 
      puts "This calculator does not support that as an operator"
      puts "Please use +, -, /, or *"
      menu
    end
end

def first_number
    first_modifier = gets.strip  
    if first_modifier =~ /\D/
        error_input
    else 
        return first_modifier
    end
end

def second_number
    second_modifier = gets.strip
    if second_modifier =~ /\D/
        error_input
    else 
        return second_modifier
    end
end

def error_input
    puts "That is not a number."
    puts "Try again."
    menu
end

menu
puts @result


