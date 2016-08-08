class MessagesController < ApplicationController

  def reply
       message_body = params[:Body]
       from_number = params[:From]
       boot_twilio
       sms = @client.messages.create(
         from: ENV['twilio_number'],
         to_number: params['message']['To'],
         body: "Hello World"
       )
     end

     def new

       @message = Message.new

     end


     def create
       #
       logger.debug "test"

       logger.debug
       @message = Message.new
       @message.Body = params['message']['Body']
       @message.From = params['message']['From']
       @message.To = params['message']['To']

      #  message_body = params['message']['Body']
      #  from_number = params['message']['From']
      #  to_number = params['message']['To']

         boot_twilio
         sms = @client.messages.create(
           from: ENV['twilio_number'],
           to: '+1' + @message.To,
           body: "#{@message.Body}."
         )
     # ENV['twilio_number']

        if @message.save
          redirect_to messages_new_path, :flash => { :success => "Message Sent" }
        else
          render :new, :flash => { :fail => "Please try again!" }
        end

      end

  # ENV['twilio_number']
  # @message = @client.account.messages.create({:To => "+1"+"#{:To}",
  #  :from => ENV['twilio_number'],
  #  :body => "#{messages_url}"})



     private

     def boot_twilio
       account_sid = ENV['twilio_account_sid']
       auth_token = ENV['twilio_token']
       logger
       @client = Twilio::REST::Client.new account_sid, auth_token
     end
  end
