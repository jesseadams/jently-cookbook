Jently Cookbook
===============
This is a chef cookbook that sets up [Jently](https://github.com/vaneyckt/Jently) for use with Jenkins CI.

Requirements
------------

Cookbooks

 - git

Platforms

 - ubuntu

Installation
------------

Add the `jently` cookbook to your `Berksfile`:

```ruby
cookbook 'jently'
```

or install directly with knife:

    $ knife cookbook site install jently

Attributes
----------

Please see [attributes/default.rb](https://github.com/paydici/jently-cookbook/tree/master/attributes/default.rb). These pretty much map 1:1 with [Jently's config file](https://github.com/vaneyckt/Jently/blob/master/config/sample-config.yaml.erb).

Usage
-----
Add the cookbook to your `run_list` in a node or role:

```ruby
"run_list": [
  "recipe[jently::default]"
]
```

or include it in a recipe:

```ruby
# other_cookbook/metadata.rb
# ...
depends 'jently'
```
```ruby
# other_cookbook/recipes/default.rb
# ...
include_recipe 'jently::default'
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------

Authors:

* Jesse R. Adams

MIT Licence
