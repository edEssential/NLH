class Link < ActiveRecord::Base
  attr_accessible :content, :created
  
  MY_APPLICATION_NAME = "NathLiddleHulme"
  
  def self.get_latest_tweets
    tweets = client.statuses.user_timeline? :screen_name => MY_APPLICATION_NAME # hit the API
    tweets.each do |t|
      created = DateTime.parse(t.created_at)
      # create the tweet if it doesn't already exist
      unless Link.exists?(["created=?", created])
        Link.create({:content => t.text, :created => created })
      end
    end
  end

  private
  def self.client
    Grackle::Client.new(:ssl=>true, :auth=>{
      :type=>:oauth,
      :consumer_key=>'z5HBMyZ5uMFYvirsLHsLzg',
      :consumer_secret=>'sYlE2V82dyGzb7I8gJtdVmYAmDcgcQYBjJVi3sAaH4',
      :oauth_token=>'243666133-ycR7Q0bshwGfzSabRgbmzFbmIgwLs2Ad1Ha30dRQ',
      :oauth_token_secret=>'iZRjWreZiNOXANaQjcvAYtzaISB9kHMWfpN5W5YiI'
    })

  end
end