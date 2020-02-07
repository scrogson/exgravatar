defmodule Exgravatar.Mixfile do
  use Mix.Project

  def project do
    [
      app: :exgravatar,
      version: "2.0.2",
      elixir: "~> 1.0",
      description: description(),
      package: package(),
      deps: []
    ]
  end

  def application do
    [applications: [:crypto]]
  end

  defp description do
    """
    An Elixir module for generating Gravatar urls.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Sonny Scroggin"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/scrogson/exgravatar"}
    ]
  end
end
