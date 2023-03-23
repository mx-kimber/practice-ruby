class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
# employee1.print_info
# employee2.print_info

class Manager < Employee
  attr_reader :employees
  attr_writer :give_all_raises
  attr_writer :fire_employees

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end

  def give_all_raises
    p @employees[0].give_annual_raise
    p @emloyees[1].give_annual_raise
    p "giving all the raises"
  end

  def fire_employees
    @active = input_options[:active] = false
  end
end

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])

manager.print_info
manager.send_report

p manager

employee1.give_annual_raise
employee2.give_annual_raise

p employee1


# inputs outputs

# inputs - manager, employees
# outputs employeed but hve highter salaries
# majora 84k, danilo 94.5k

# # mke method called give_all-raises
# inside that method find all employees (danila, majoria)
# once i have a partivular employee, then give that employee a raise
