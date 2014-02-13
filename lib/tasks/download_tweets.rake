task :download_tweets => :enviroment do
  Link.get_latest_tweet
end