# Filters for Cells.

## Introduction

`cells-filters` allows you having before and after filters in your cell while having access to state-args.

## Example

```ruby
class BassistCell < Cell::Base
  include Cell::Filters

  before_filter :prepare
  after_filter :cleanup

  def prepare(state, tone, timing)
    @before = "In #{tone} and #{timing}"
  end

  def cleanup(state, tone, timing)
    @later = "After #{tone} and #{timing}"
  end
```

It gives you `before_filter` and `after_filter` just like in ActionControllers. You can pass a method name or a block. The difference to the filters found in Rails itself is that Cells' filters receive the arguments passed in `render_cell` as parameters.

```ruby
render_cell(:bassist, :play, "C-sharp", "4/4")
```

The three parameters will be forwarded to the filter methods.

## Limitations

We'd love to use the Callbacks module found in Rails directly, but they don't support passing arguments to the filters. Sorry for that.
