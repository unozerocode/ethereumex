use Mix.Config

config :ethereumex, url: (System.get_env("ETHEREUM_URL") || "https://mainnet.infura.io/v3/e8ce0686f4e84c44ba1d3c88bb824f22")