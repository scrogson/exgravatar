# Exgravatar

[![Build Status](https://travis-ci.org/scrogson/exgravatar.svg?branch=master)](https://travis-ci.org/scrogson/exgravatar)

An Elixir module for generating [Gravatar](http://gravatar.com) urls.

Make sure to check out the
[Gravatar documentation](https://en.gravatar.com/site/implement/images/) for all
available options.

## Usage

```elixir
Exgravatar.generate "jdoe@example.com"
#=> "http://gravatar.com/avatar/694ea0904ceaf766c6738166ed89bafb"

# with size option in pixels
Exgravatar.generate("jdoe@example.com", %{s: 256})
#=> "http://gravatar.com/avatar/694ea0904ceaf766c6738166ed89bafb?s=256"

# add true after the options to get the secure https url
Exgravatar.generate("jdoe@example.com", %{}, true)
#=> "https://secure.gravatar.com/avatar/694ea0904ceaf766c6738166ed89bafb"
```
