module ApplicationHelper

  def broadcast(channel, &block)
    message = {:channel => channel, :data => capture(&block), :ext => {:auth_token => FAYE_TOKEN}}
    uri = URI.parse(FAYE_HOST + "faye")
    Net::HTTP.post_form(uri, :message => message.to_json)
  end
  
end
