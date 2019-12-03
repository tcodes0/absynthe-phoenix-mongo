# Getting started

- `mix startup`
- `mix start`

Now you can visit [`localhost:4000/playground`](http://localhost:4000/playground) from your browser.

# Don't have `mix`?

You probably need to install `elixir`.

**MacOS**

- install and setup [asdf](https://asdf-vm.com/#/core-manage-asdf-vm?id=install-asdf-vm). Try with homebrew.

`asdf plugin-add elixir erlang`

`asdf install elixir 1.9.2`

[latest](https://codesandbox.io/s/pedantic-lederberg-k08j3)

`asdf install erlang 22.1`

[latest](https://codesandbox.io/s/stoic-zhukovsky-nhkij)

erlang install takes about 10 minutes to compile the C source, and it can be tricky.

`asdf current`

`mix` should now be installed

**Linux**

_PR welcome_

**Windows**

_PR welcome_

### Community

To start your Phoenix server:

- Install dependencies with `mix deps.get`
- Create and migrate your database with `mix ecto.create && mix ecto.migrate`
- Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

#### Learn more

- Official website: http://www.phoenixframework.org/
- Guides: http://phoenixframework.org/docs/overview
- Docs: https://hexdocs.pm/phoenix
- Mailing list: http://groups.google.com/group/phoenix-talk
- Source: https://github.com/phoenixframework/phoenix
