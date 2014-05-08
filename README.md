# Exgravatar

An Elixir module for generating [Gravatar](http://gravatar.com) urls.

## Usage

```elixir
Exgravatar.generate "jdoe@example.com"
#=> "http://gravatar.com/avatar/694ea0904ceaf766c6738166ed89bafb"

Exgravatar.generate("jdoe@example.com", %{"s" => 256})
#=> "http://gravatar.com/avatar/694ea0904ceaf766c6738166ed89bafb?s=256"

Exgravatar.generate("jdoe@example.com", %{}, true)
#=> "https://secure.gravatar.com/avatar/694ea0904ceaf766c6738166ed89bafb"
```

