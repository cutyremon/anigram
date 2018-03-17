  OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '58722265137-6j5blbu4c9pv0htg16gdkqv9dbrdsn64.apps.googleusercontent.com','EYcL7Yk362R9XlPrhseFGqi3', 
  {
  	scope: ["plus.login", "plus.me", "userinfo.email", "userinfo.profile", "https://mail.google.com/",
                "gmail.compose", "gmail.modify", "gmail.readonly"],        
	access_type: 'offline'

            }
   provider :facebook, 
            '143047686356730',
            '7e797f2c37f2ef319e254461086a58f1',
              scope: 'public_profile, email',
               info_fields: 'id,first_name,middle_name,last_name,email,name,link,picture'

end