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