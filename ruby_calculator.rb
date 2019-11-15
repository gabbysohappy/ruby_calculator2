
def calculator_begin
    puts "This is a calculator"
    puts "What is the first number?"
    @first = gets.strip
    if @first == "clear"
        end_program
        return @first  
    elsif @first =~ /\D/
        error_message
        calculator_begin
    else         
        return @first      
    end   
end

def operator_choice
    if @first == "clear"
        return
    end 
    puts "What is the operator?"
    op = gets.strip.to_s
    case op 
     when "+"
        addition
     when "-"
        subtraction
     when "/"
        division
     when "*"
        multipilcation
     when "clear"
        end_program      
     else
        puts "This calculator does not support that as an operator"
        puts "Please use +, -, /, or *"
        operator_choice
     end 
end 

def second_number
    puts "What is the second number?"
    second_modifier = gets.strip
    if second_modifier == "clear"
        return second_modifier
    elsif second_modifier =~ /\D/
        error_message
        second_number
    else 
        return second_modifier
    end
end

def addition
    @second = second_number  
    @result = @first.to_f + @second.to_f
    result_step
end 

def multipilcation 
    @second = second_number  
    @result = @first.to_f * @second.to_f
    result_step
end

def division
    @second = second_number  
    @result = @first.to_f / @second.to_f
    result_step
end

def subtraction
    @second = second_number  
    @result = @first.to_f - @second.to_f
    result_step
end

def error_message
    puts "That is not a number."
    puts "Try again."
end

def result_step
    if @second == "clear"
        end_program
    else
        puts "Calculating..." 
        puts "The result is #{@result}"
    end   
end

def end_program
    puts "Goodbye"
end

calculator_begin
operator_choice
