
Given("I am on Bug Tracker home page") do
 @browser.navigate.to "https://bugtrackers.herokuapp.com/"
 end

When("I click on sign up button") do
   @browser.find_element(xpath: "//ul/li[1]/form/div/input").click
end

Then("I should be able to see signup page") do
 sleep 3
 @browser.find_element(xpath: '//div[2]/div/div[1]/h4').displayed?
end

Given("I am on Bug Tracker signup page") do
 sleep 3
 @browser.find_element(xpath: '//div[2]/div/div[1]/h4').displayed?  
end

When("I enter invalid datas") do
  sleep 2
  @browser.find_element(id: 'user_name').send_keys "vars"
  sleep 2
  @browser.find_element(id: 'user_username').send_keys "var"
  sleep 2
  @browser.find_element(id: 'user_email').send_keys "varshagowda.com"
  sleep 2
  @browser.find_element(id: 'user_password').send_keys "varsh"
  sleep 2
  @browser.find_element(id: 'user_password_confirmation').send_keys "varsha"
  sleep 2
end

When("I click on ok button") do
  @browser.find_element(name: 'commit').click
  uname=@browser.find_element(id: 'user_username-error').text
  puts "#{uname}"
  uemail=@browser.find_element(id: 'user_email-error').text
  puts "#{uemail}"
  upass=@browser.find_element(id: 'user_password-error').text
  puts "#{upass}"
  upass1=@browser.find_element(id: 'user_password_confirmation-error').text
  puts "#{upass1}"
end

Then("I should able to see error message") do
 @browser.find_element(xpath: '//div[2]/div/div[1]/h4').displayed?  
end

Given("I am in Bug tracker dashboard") do
  @browser.navigate.to "https://bugtrackers.herokuapp.com/"
end

When("I click on log in button") do
  @browser.find_element(xpath: "//div/div[2]/ul/li[2]/form/div/input").click
  sleep 2
 end

Then("I should see log in popup window") do
  @browser.find_element(id: 'sign_in').displayed?
  sleep 5
end


When("I enter invalid username and password") do
sleep 5
  @browser.find_element(id: "inputUsername").send_keys "varsha"
  @browser.find_element(id: "inputPassword").send_keys "hddddddddddddddd"
  sleep 2
  @browser.find_element(name: "commit").click
  sleep 3
end

Then("I should see Error Message") do
var1 = @browser.find_element(xpath: "//div[1]/div/div/p").text
puts "#{var1}"
sleep 2
end


	

