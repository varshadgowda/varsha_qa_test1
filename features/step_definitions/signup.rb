Given("I am on BugTracker Home page") do
   @browser.navigate.to "https://bugtrackers.herokuapp.com/"
end

When("I create an user with invalid data") do
 sleep 2
  @browser.find_element(xpath: "//div/div[2]/ul/li[1]/form/div/input").click
  sleep 2
  @browser.find_element(id: 'user_name').send_keys ""
  sleep 2
  @browser.find_element(id: 'user_username').send_keys "varsha"
  sleep 2
  @browser.find_element(id: 'user_email').send_keys "varshagowa905@gmail.com"
  sleep 2
  @browser.find_element(id: 'user_password').send_keys "varsh"
  sleep 2
  @browser.find_element(id: 'user_password_confirmation').send_keys "varshu@123"
  sleep 2
   @browser.find_element(name: 'commit').click
end

Then("I should see Error message") do 
  sleep 3
 email1=@browser.find_element(xpath: "//div[2]/div[2]/div/div[2]/form/div[4]/div[1]/span").text
 email="Email has already been taken"
 	if email == email1
 		puts "#{email}"
 	else
 		raise.Exception.new puts "#{emai}"
 	end
 end
