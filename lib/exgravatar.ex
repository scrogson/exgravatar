defmodule Exgravatar do
  @moduledoc """
    An Elixir module for generating [Gravatar](http://gravatar.com) urls.
  """

  @domain "gravatar.com/avatar/"

  @doc """
  Generates a gravatar url for the given email address.

  ## Example

    iex> Exgravatar.generate("jdoe@example.com")
    "http://gravatar.com/avatar/694ea0904ceaf766c6738166ed89bafb"

    iex> Exgravatar.generate("jdoe@example.com", %{s: 256})
    "http://gravatar.com/avatar/694ea0904ceaf766c6738166ed89bafb?s=256"

    iex> Exgravatar.generate("jdoe@example.com", %{}, true)
    "https://secure.gravatar.com/avatar/694ea0904ceaf766c6738166ed89bafb"

  """
  def generate(email, opts \\ %{}, secure \\ false) do
    %URI{} |> host(secure) |> email_to_hash(email) |> options(opts) |> to_string
  end

  defp options(%URI{} = uri, opts) when map_size(opts) == 0, do: %URI{uri|query: nil}
  defp options(%URI{} = uri, opts), do: %URI{uri|query: URI.encode_query(opts)}

  defp host(%URI{} = uri, true),  do: %URI{uri|scheme: "https", host: "secure.#{@domain}"}
  defp host(%URI{} = uri, false), do: %URI{uri|scheme: "http", host: @domain}

  defp email_to_hash(%URI{} = uri, email) do
    hash = :crypto.hash(:md5, email) |> Base.encode16(case: :lower)
    %URI{uri|path: hash}
  end
end
