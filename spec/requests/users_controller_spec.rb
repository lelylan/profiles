require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature 'UsersController' do

  let!(:application)  { FactoryGirl.create :application }
  let!(:user)         { FactoryGirl.create :user }
  let!(:access_token) { FactoryGirl.create :access_token, application: application, scopes: 'resources', resource_owner_id: user.id }

  before { page.driver.header 'Authorization', "Bearer #{access_token.token}" }
  before { page.driver.header 'Content-Type', 'application/json' }

  let(:controller) { 'users' }
  let(:factory)    { 'user' }

  context 'GET /me' do

    let!(:resource)  { user }
    let(:uri) { '/me' }

    it_behaves_like 'a showable resource'
    it_behaves_like 'a proxiable resource'
    it_behaves_like 'a crossable resource'
  end
end
