import Config

config :extwitter, :oauth, [
   consumer_key: System.get_env("CONSUMER_KEY"),
   consumer_secret: System.get_env("CONSUMER_SECRET_KEY"),
   access_token: System.get_env("CONSUMER_SECRET_KEY"),
   access_token_secret: System.get_env("CONSUMER_SECRET_KEY")
]
