# Verbose Logging

Sometimes digging through logs is the best way to figure out what's going on.

When you run your test suite, logs are not printed out by default (although written to `test.log` – who cares?).

We provide a recipe to turn verbose logging for a specific example/group.

## Instructions

In your `spec_helper.rb`:

```ruby
require "test_prof/recipes/logging"
```

Activate logging by adding special tag – `:log`:

```ruby
# Add the tag and you will see a lot of interesting stuff in your console
it "does smthng weird", :log do
  ...
end

# or for the group
describe "GET #index", :log do
  ...
end
```

What about logging every example? Just use `LOG` env variable:

```sh
LOG=1 rspec ...
```
