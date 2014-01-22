defmodule Exgravatar do
  @moduledoc """
    An Elixir module for generating [Gravatar](http://gravatar.com) urls.
  """

  @domain "gravatar.com/avatar"

  def start(_type, _args) do
    Exgravatar.Supervisor.start_link
  end

  @doc """
  Generates a gravatar url for the given email address.

  ## Example
 
    iex> Exgravatar.gravatar("jdoe@example.com")
    "http://gravatar.com/avatar/694ea0904ceaf766c6738166ed89bafb"

  """
  def gravatar(email) do
    "http://#{@domain}/#{email_to_hash(email)}" |> String.downcase
  end

  defp email_to_hash(email) do
    bc <<x>> inbits :crypto.md5(email), do: <<integer_to_binary(x, 16) :: binary >>
  end
end
