defmodule ExgravatarTest do
  use ExUnit.Case, async: true

  doctest Exgravatar

  import Exgravatar

  @domain "http://gravatar.com/avatar"
  @secure "https://secure.gravatar.com/avatar"
  @email "jdoe@example.com"
  @email_hash "694ea0904ceaf766c6738166ed89bafb"

  test "it converts email into an MD5 hash" do
    assert "#{@domain}/#{@email_hash}" ==
             gravatar_url(@email, secure: false)
  end

  test "it generates secure urls by default" do
    assert "#{@secure}/#{@email_hash}" ==
             gravatar_url(@email)
  end

  test "it generates correct query string params" do
    assert "#{@secure}/#{@email_hash}?s=256&r=pg" ==
             gravatar_url(@email, s: 256, r: "pg")
  end

  test "it allows you to use a default image" do
    assert "#{@secure}/#{@email_hash}?d=http%3A%2F%2Fexample.com%2Fimages%2Favatar.jpg" ==
             gravatar_url(@email, d: "http://example.com/images/avatar.jpg")
  end
end
