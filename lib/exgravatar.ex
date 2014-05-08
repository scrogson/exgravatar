defmodule Exgravatar do
  @moduledoc """
    An Elixir module for generating [Gravatar](http://gravatar.com) urls.
  """

  @domain "gravatar.com/avatar"

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
  def generate(email, options \\ %{}, secure \\ false) do
    gravatar = "#{base_path(secure)}/#{email_to_hash(email)}" |> String.downcase

    if map_size(options) > 0 do
      gravatar = gravatar <> "?#{URI.encode_query(options)}"
    end

    gravatar
  end

  defp base_path(true), do: "https://secure.#{@domain}"
  defp base_path(_), do: "http://#{@domain}"

  defp email_to_hash(email) do
    for <<x <- :crypto.hash(:md5, email)>>, into: "", do: <<integer_to_binary(x, 16) :: binary>>
  end
end
