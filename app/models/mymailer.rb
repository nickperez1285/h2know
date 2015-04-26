require 'httparty'

class Mymailer

  include HTTParty

  base_uri "https://api.sparkpost.com/api/v1"

  def send_mail(opts)

    headers = {

      "Authorization" => "96cd3d3f0dfc2e95b07bb9a855b7446b885ce16e",

      "Content-Type"  => "application/json"

    }

    data = {

      :options => {

        :open_tracking => true,

        :click_tracking => true

      },

      :campaign_id => "69",

      :return_path => "no-reply@H2know.com",

      :recipients => [

        {

          :address => {

            :email  => opts[:to]
          }

        }

      ],

      :content => {

        :text => opts[:msg],

        :from => {

          :email  => "no-reply@nickperez.us"

        },

        :subject  => "test"

      }

    }

    headers = self.class.post('/transmissions', { headers: headers, body: data.to_json })

  end

end

# h = MyMailer.new.send_mail :to => 'email adress', :msg => 'message '

# puts h.inspect