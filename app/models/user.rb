class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

validates_presence_of :name

=begin
The below is used if you want to eliminate the response to errors
def function_name
  begin
    function 
  rescue
    below will take the error and pass it to an error message

    rescue => e
      puts "Error occured #{e}"

    rescue
    if you pass nothing then the error results in no action
  end
end  
=end
 
  def first_name
    self.name.split.first 
  end

  def last_name
    self.name.split.last
  end
end

#below is an example of how to connect to FB

def get_facebook_messages
  begin
    contacts_fb
    @messages = reviews_messages
  rescue IOError => e
    flash[:error] = "Error occured contacting Facebook: #{e}"
  end
end


