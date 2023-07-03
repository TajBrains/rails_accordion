# RailsAccordion

RailsAccordion is a Ruby gem that provides an easy-to-use accordion component for Rails web applications. This gem allows developers to create collapsible sections of content that can be expanded or collapsed with a single click. The accordion is a powerful tool to enhance the user experience of your web application by providing a clean and intuitive way to display complex information.

## Installation

To install RailsAccordion, add the following line to your application's Gemfile:

```ruby
gem 'rails_accordion'
```

Then, execute the following command to install the gem:

```shell
bundle install
```

Next, run the generator to generate the necessary files:

```shell
rails generate rails_accordion:install
```

In your `application.html.erb` layout file, add the following line:

```erb
<%= rails_accordion_assets %>
```

## Usage

To use RailsAccordion, you can follow the example below:

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

The RailsAccordion component accepts the following options:

- `multiple_open`: Determines whether multiple accordion items can be open at the same time. Accepted values are `true` or `false`.
- `default_state`: Sets the default state of the accordion items on page load. Accepted values are:
  - `all_closed`: All items are closed on page load.
  - `all_opened`: All items are opened on page load.
  - `first_opened`: The first item is opened by default.

Example usage:

```erb
<%= accordion class: "bg-white rounded-xl overflow-auto", default_state: :all_opened do %>
  <!-- accordion items -->
<% end %>
```

## Development

After checking out the repository, run the following command to install the dependencies:

```shell
bin/setup
```

You can run the tests using the following command:

```shell
rake spec
```

For an interactive prompt to experiment with the gem, you can use the following command:

```shell
bin/console
```

To install the gem locally, run the following command:

```shell
bundle exec rake install
```

To release a new version, update the version number in `version.rb`, and then run the following command:

```shell
bundle exec rake release
```

This command will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/Tajbrains/rails_accordion](https://github.com/Tajbrains/rails_accordion). We strive to provide a safe and welcoming space for collaboration, and we expect contributors to adhere to the [code of conduct](https://github.com/Tajbrains/rails_accordion/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RailsAccordion project's codebases, issue trackers, chat rooms, and mailing lists is expected to follow the [code of conduct](https://github.com/Tajbrains/rails_accordion/blob/master/CODE_OF_CONDUCT.md).