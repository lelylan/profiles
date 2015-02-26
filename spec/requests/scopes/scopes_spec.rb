require File.expand_path(File.dirname(__FILE__) + '/../acceptance_helper')

feature 'Scope' do

  let!(:application) { FactoryGirl.create :application }
  let!(:user)        { FactoryGirl.create :user }

  context 'with no token' do
    it { should_not authorize 'get /me' }
  end

  %w(resources resources:read devices devices:read types:read resources:read types types:read privates user).each do |scope|

    context "with token #{scope}" do

      let!(:access_token) { FactoryGirl.create :access_token, scopes: scope, resource_owner_id: user.id }
      before { page.driver.header 'Authorization', "Bearer #{access_token.token}" }

      it { should authorize 'get /me' }
    end
  end
end
