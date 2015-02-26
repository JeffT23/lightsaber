require_relative 'spec_helper'

describe 'Users' do


  it 'responds to get /users/:name' do
    '/users/:name' 
    expect(last_response).to be_ok
  end

  it 'responds to post /users/new' do
    post '/users/new'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
  end
  
  it 'responds to put /users/:name' do
    put '/users/:name'
    expect(last_response).to be_ok
  end
  
  it 'responds to delete /users/:name' do
    delete '/users/:name'
    expect(last_response).to be_ok
  end
end
