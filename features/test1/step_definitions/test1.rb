Given(/^I am on the "(.*?)" home page$/) do |site_name|
  visit "https://#{site_name}.com"
   sleep 10
end

Then(/^I should see "(.*?)" field$/) do |arg|
    first(".gsfi").set(arg)
    find(".sbico").click
end