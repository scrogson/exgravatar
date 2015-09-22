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

## License

The MIT License (MIT)

Copyright (c) 2015 Sonny Scroggin

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
