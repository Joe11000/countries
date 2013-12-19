class Message < ActiveRecord::Base
  attr_accessible :body, :subject
  
  belongs_to  :sent,     class_name: "Country" #, inverse_of: :sent_messages
  belongs_to  :received, class_name: "Country" #, inverse_of: :received_messages


  validates :body,    presence: true

  validates :subject, presence: true
end
