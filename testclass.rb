class Calculator

  #global variables
  $a = 1
  $math = '+'
  $b = 1

  #get user input for calculation
  def input
    puts "enter a number"
    $a = gets.chomp.to_i
    puts "enter a math operator (+, -, *, or /)"
    $math = gets.chomp
    puts "enter another number"
    $b = gets.chomp.to_i

    calculate
  end

  #calculate
  def calculate

    output = ''

    case $math
    when '+'
      output = $a+$b
    when '-'
      output = $a-$b
    when '*'
      output = $a*$b
    when '/'
      output = $a/$b
    else
      puts "not a valid operator, try again"
      input
    end

    print(output)
  end

  #displays the calculation on the terminal
  def print(output)
    puts "#{$a} #{$math} #{$b} = #{output}"
  end
end

c = Calculator.new

c.input
