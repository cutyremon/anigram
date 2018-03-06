Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,43624352228-0qcn3ikp1oep9nl90dmibmmhtheun7cn.apps.googleusercontent.com,1QkMZeClVPP9QQPwNCnKf1-e,
           {
               scope: ["plus.login", "plus.me", "userinfo.email", "userinfo.profile", "https://mail.google.com/",
                       "gmail.compose", "gmail.modify", "gmail.readonly"],
               access_type: \'offline\'
        }
end