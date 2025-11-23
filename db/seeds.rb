# Clear existing data
Employee.destroy_all
Department.destroy_all

# Create Departments
finance = Department.create!(name: "Finance", budget: 500000.00)
engineering = Department.create!(name: "Engineering", budget: 1000000.00)
marketing = Department.create!(name: "Marketing", budget: 300000.00)
hr = Department.create!(name: "Human Resources", budget: 200000.00)

# Create Employees
Employee.create!(
  first_name: "John",
  last_name: "Doe",
  email: "john.doe@company.com",
  salary: 75000.00,
  department: finance
)

Employee.create!(
  first_name: "Jane",
  last_name: "Smith",
  email: "jane.smith@company.com",
  salary: 95000.00,
  department: engineering
)

Employee.create!(
  first_name: "Bob",
  last_name: "Johnson",
  email: "bob.johnson@company.com",
  salary: 65000.00,
  department: marketing
)

Employee.create!(
  first_name: "Alice",
  last_name: "Williams",
  email: "alice.williams@company.com",
  salary: 85000.00,
  department: engineering
)

Employee.create!(
  first_name: "Charlie",
  last_name: "Brown",
  email: "charlie.brown@company.com",
  salary: 70000.00,
  department: hr
)

puts "Created #{Department.count} departments and #{Employee.count} employees"
