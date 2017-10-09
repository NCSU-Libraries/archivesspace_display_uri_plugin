ArchivesSpace::Application.routes.draw do
  # For API Utility
  get '/api/resources/:resource_id' => 'ajax_utility#get_resource'
  get '/api/*uri' => 'ajax_utility#get_json'
  post '/api/*uri' => 'ajax_utility#post_json'
end
