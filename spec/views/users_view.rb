module HelpersViewMethods
  def has_user(user, json = nil)
    json.id.should        == user.id.to_s
    json.email.should     == user.email
    json.username.should  == user.username
    json.full_name.should == user.full_name
    json.location.should  == user.location
    json.homepage.should  == user.homepage
    json.rate_limit.should == user.rate_limit
  end
end

RSpec.configuration.include HelpersViewMethods
