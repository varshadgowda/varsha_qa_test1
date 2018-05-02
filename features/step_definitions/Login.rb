Given("I am on BugTracker home page") do
@browser.navigate.to "https://bugtrackers.herokuapp.com/"
end

When("I login with Invalid credentials") do
sleep 3
  @browser.find_element(xpath: "//div/div[2]/ul/li[2]/form/div/input").click
  sleep 2
  @browser.find_element(id: "inputUsername").send_keys "varsha"
  @browser.find_element(id: "inputPassword").send_keys "vdddddd"
  sleep 3
   @browser.find_element(name: "commit").click
   sleep 2
end

Then("I should see {string}") do |var|
var1 = @browser.find_element(xpath: "//div[1]/div/div/p").text
  if var == var1
    puts "#{var}"
  else
    raise.Exception.new "#{var} not found"
  end
end

	

