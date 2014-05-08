defmodule ExgravatarTest do
  use ExUnit.Case, async: true

  @domain "gravatar.com/avatar"
  @email "jdoe@example.com"
  @email_hash "694ea0904ceaf766c6738166ed89bafb"

  test "it converts email into an MD5 hash" do
    assert "http://#{@domain}/#{@email_hash}" == Exgravatar.generate(@email)
  end

  test "it generates secure urls" do
    assert "https://secure.#{@domain}/#{@email_hash}" == Exgravatar.generate(@email, [], true)
  end

  test "it generates correct query string params" do
    options = [s: 256, r: "pg"]
    assert "https://secure.#{@domain}/#{@email_hash}?s=256&r=pg" == Exgravatar.generate(@email, options, true)
  end

  test "it allows you to use a default image" do
    options = [d: "http://example.com/images/avatar.jpg"]
    assert "http://#{@domain}/#{@email_hash}?d=http%3A%2F%2Fexample.com%2Fimages%2Favatar.jpg" == Exgravatar.generate(@email, options)
  end
end
