class AuthenticationsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    
    # binding.pry
    # > request.env["omniauth.auth"]                                                                                                              
    # {"provider"=>"github",                                                                                                                                                         
    #  "uid"=>"14863257",                                                                                                                                                               
    #  "info"=>
    #   {"nickname"=>"mindovermiles262",
    #      "email"=>"mindovermiles262@gmail.com",
    #      "name"=>"Andy",
    #      "image"=>"https://avatars2.githubusercontent.com/u/14863257?v=4",
    #      "urls"=>{"GitHub"=>"https://github.com/mindovermiles262", "Blog"=>"www.andyduss.com"}},                                                                                       
    #  "credentials"=>{"token"=>"45c931064754567b0093008261e752b68e632b8c", "expires"=>false},
    #  "extra"=>
    #   {"raw_info"=>
    #       {"login"=>"mindovermiles262",
    #            "id"=>14863257,
    #            "node_id"=>"MDQ6VXNlcyyyODYzMjU3",
    #            "avatar_url"=>"https://avatars2.githubusercontent.com/u/14863257?v=4",
    #            "gravatar_id"=>"",
    #            "url"=>"https://api.github.com/users/mindovermiles262",
    #            "html_url"=>"https://github.com/mindovermiles262",
    #            "followers_url"=>"https://api.github.com/users/mindovermiles262/followers",
    #            "following_url"=>"https://api.github.com/users/mindovermiles262/following{/other_user}",                                                                                    
    #            "gists_url"=>"https://api.github.com/users/mindovermiles262/gists{/gist_id}",
    #            "starred_url"=>"https://api.github.com/users/mindovermiles262/starred{/owner}{/repo}",                                                                                      
    #            "subscriptions_url"=>"https://api.github.com/users/mindovermiles262/subscriptions",
    #            "organizations_url"=>"https://api.github.com/users/mindovermiles262/orgs",
    #            "repos_url"=>"https://api.github.com/users/mindovermiles262/repos",
    #            "events_url"=>"https://api.github.com/users/mindovermiles262/events{/privacy}",
    #            "received_events_url"=>"https://api.github.com/users/mindovermiles262/received_events",                                                                                     
    #            "type"=>"User",
    #            "site_admin"=>false,
    #            "name"=>"Andy",
    #            "company"=>nil,
    #            "blog"=>"www.andyduss.com",
    #            "location"=>"San Francisco, CA",
    #            "email"=>"mindovermiles262@gmail.com",
    #            "hireable"=>true,
    #            "bio"=>"Core Team @TheOdinProject , Marathon Runner, Coffee Drinker.",
    #            "public_repos"=>88,
    #            "public_gists"=>1,
    #            "followers"=>34,
    #            "following"=>7,
    #            "created_at"=>"2015-09-27T19:46:55Z",
    #            "updated_at"=>"2019-01-24T21:14:29Z"},
    #      "all_emails"=>[]}}

  end
end
