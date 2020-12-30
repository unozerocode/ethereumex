defmodule Ethereumex do
  @moduledoc File.read!("#{__DIR__}/../README.md")

  use Application
  import Supervisor.Spec, warn: false

  alias Ethereumex.Config
  alias Ethereumex.Counter
  require Logger

  def start(_type, _args) do
    Logger.info("Ethereumex UZ start")
    :ok = Counter.setup()
    children = Config.setup_children()
    opts = [strategy: :one_for_one, name: Ethereumex.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
