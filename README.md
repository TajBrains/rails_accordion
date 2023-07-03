# RailsAccordion

rails_accordion is a Ruby gem that provides an easy-to-use accordion component for use in Rails web applications. With this gem, developers can create collapsible sections of content that can be expanded or collapsed with a single click. The accordion is a great way to improve the user experience of your web application, by providing a clean and intuitive way to display complex information.

## Installation

```rb
gem 'rails_accordion'
```

```shell
bundle install
```

```shell
rails generate rails_accordion:install
```

In `application.html.erb`, add:

```erb
<%= rails_accordion_assets %>
```

In `application_helper.rb`, add:

```rb
include RailsAccordion::ApplicationHelper
```


## Usage

```erb
<%= accordion class: "bg-white rounded-xl overflow-auto" do %>
    <%= accordion_item do |item| %>
        <% item.header do  %>
            Hello world
        <% end %>
        <% item.body do %>
            Hello accordion body
        <% end %>
    <% end %>
<% end %>
```

### Options

multiple_open: [true, false]
default_state: 1. all_closed: All items are closed on page load. 2. all_opened: All items are opened. 3. first_opened: First item is opened by default

<%= accordion class: "bg-white rounded-xl overflow-auto", default_state: :all_opened do %>

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rails_accordion. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/Tajbrains/rails_accordion/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RailsAccordion project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/rails_accordion/blob/master/CODE_OF_CONDUCT.md).
