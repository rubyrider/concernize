## Getting started

Concernize works from rails4.x.x:

```ruby
gem 'concernize'
```

Run the bundle command to install it.

Once you are done with installation, you are ready to generate your concern files.

```console
rails generate concernize models film concern
```

This will generate a concern file on the following directory

```ruby
  # app/models/concerns/film_concern.rb

  module FileConcern

    extend ActiveSupport::Concern

    # define your object level methods here...

    # def method_one
    #   puts "wow!! working!!!"
    # end

    # included do

    # #type your class methods here...

    # end

    # class Post < ActiveRecord::Base
    #    include <%= @concern_module_name %>
    # end

  end

```

The last argument (concern_namespace) is optional. You can generate a concern without a concern_namespace.

## License

MIT-LICENSE. Free for humans :-)

You are not granted rights or licenses to the trademarks of Plataformatec, including without limitation the Devise name or logo.