module Resolvers
  class GoogleLoginResolver
    def call(_obj, args, _ctx)
      response = validator.check(
        args[:id_token],
        Rails.application.secrets.google_audience
      )
      handle_response(response, args)
    rescue GoogleIDToken::ValidationError => e
      puts "Cannot validate: #{e}"
    end

    private

    def handle_response(response, args)
      User.find_or_initialize_by(email: response['email']).tap do |user|
        user.name = response['name']
        user.photo_url = args[:photo_url]
        user.save!
      end
    end

    def validator
      GoogleIDToken::Validator.new
    end
  end
end
