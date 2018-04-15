require 'sinatra'
require 'sinatra/json'
require 'json'
require 'logger'

class SlashCommand < Sinatra::Base
  configure do
    set :environment, :production
  end

  def respose_body(text, in_channel: false, attachments: [])
    {respose_type: in_channel ? "in_channel" : "ephemeral",
     content_type: "application/json", text: text, attachments: attachments}
  end
end
