defmodule ExgravatarTest do
  use ExUnit.Case

  test "it converts email into an MD5 hash" do
    email = "jdoe@example.com"
    email_hash = "694ea0904ceaf766c6738166ed89bafb" 
    assert "http://gravatar.com/avatar/#{email_hash}" == Exgravatar.gravatar(email)
  end
end
