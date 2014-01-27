class Contact < ActiveRecord::Base
  attr_accessible :email, :name, :thankstext, :thankstitle, :messagetext, :title, :text
  
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << ["Name", "Email", "Message"]
      csv << []
      all.each do |contact|
        csv << [contact.name, contact.email, contact.messagetext]
      end
    end
  end
  
end
