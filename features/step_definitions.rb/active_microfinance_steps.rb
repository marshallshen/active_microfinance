Given /^Kiva has an api specified as "(.*?)"$/ do |uri|
  @client = ActiveMicrofinance::Kiva::V1::Client.new(uri)
end

When /^I query the API with the client$/ do
  @response = @client.get
end

Then /^I should get a correct JSON response$/ do
  @response.is_a? Hash
end

When /^I query API "(.*?)" api with id "(.*?)"$/ do |arg1, id|
  pending # express the regexp above with the code you wish you had
end

Given /^Kiva has parsed api "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

When /^I write the response body to file "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^I should have a new file called "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end