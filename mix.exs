defmodule Exgravatar.Mixfile do
  use Mix.Project

  @source_url "https://github.com/scrogson/exgravatar"
  @version "2.0.3"

  def project do
    [
      app: :exgravatar,
      version: @version,
      elixir: "~> 1.0",
      package: package(),
      docs: docs(),
      deps: [
        {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
      ]
    ]
  end

  def application do
    [applications: [:crypto]]
  end

  defp package do
    [
      description: "An Elixir module for generating Gravatar urls.",
      files: ["lib", "mix.exs", "README*", "LICENSE.md"],
      maintainers: ["Sonny Scroggin"],
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url}
    ]
  end

  defp docs do
    [
      extras: [
        "LICENSE.md": [title: "License"],
        "README.md": [title: "Overview"]
      ],
      main: "readme",
      source_url: @source_url,
      formatters: ["html"]
    ]
  end
end
