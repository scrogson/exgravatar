# Exgravatar

![CI](https://github.com/scrogson/exgravatar/workflows/Elixir%20CI/badge.svg)
[![Module Version](https://img.shields.io/hexpm/v/exgravatar.svg)](https://hex.pm/packages/exgravatar)
[![Hex Docs](https://img.shields.io/badge/hex-docs-lightgreen.svg)](https://hexdocs.pm/exgravatar/)
[![Total Download](https://img.shields.io/hexpm/dt/exgravatar.svg)](https://hex.pm/packages/exgravatar)
[![License](https://img.shields.io/hexpm/l/exgravatar.svg)](https://github.com/scrogson/exgravatar/blob/master/LICENSE.md)
[![Last Updated](https://img.shields.io/github/last-commit/scrogson/exgravatar.svg)](https://github.com/scrogson/exgravatar/commits/master)

An Elixir module for generating [Gravatar](http://gravatar.com) urls.

Make sure to check out the
[Gravatar documentation](https://en.gravatar.com/site/implement/images/) for all
available options.

## Usage

```elixir
import Exgravatar

gravatar_url "jdoe@example.com", secure: false
#=> "http://gravatar.com/avatar/694ea0904ceaf766c6738166ed89bafb"

# with size option in pixels
gravatar_url("jdoe@example.com", s: 256)
#=> "https://secure.gravatar.com/avatar/694ea0904ceaf766c6738166ed89bafb?s=256"
```

## Copyright and License

Copyright (c) 2015 Sonny Scroggin

This work is free. You can redistribute it and/or modify it under the
terms of the MIT License. See the [LICENSE.md](./LICENSE.md) file for more details.
