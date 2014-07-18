Code.ensure_loaded?(Hex) and Hex.start

defmodule Exgravatar.Mixfile do
  use Mix.Project

  def project do
    [ app: :exgravatar,
      version: "0.1.0",
      elixir: ">= 0.14.1",
      description: description,
      package: package,
      deps: deps ]
  end

  def application do
    [applications: [:crypto]]
  end

  defp deps do
    []
  end

  defp description do
    """
    An Elixir module for generating Gravatar urls.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      contributors: ["Sonny Scroggin"],
      licenses: ["MIT"],
      links: [ { "GitHub", "https://github.com/scrogson/exgravatar" } ]
    ]
  end
end
