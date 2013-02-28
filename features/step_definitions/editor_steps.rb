When /^I set env variable "(\w+)" to "([^"]*)"$/ do |var, value|
  ENV[var] = value
end

When /^I poet\-edit file "([^"]*)" and change something$/ do |filename|
  ENV['EDITOR'] = "sed -i '' G"
  step "I run `poet edit #{filename}`"
end

When /^I poet\-edit file "([^"]*)" without changing something$/ do |filename|
  ENV['EDITOR'] = "/bin/cat"
  step "I run `poet edit #{filename}`"
end