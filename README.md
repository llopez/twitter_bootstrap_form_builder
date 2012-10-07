# TwitterBootstrapFormBuilder

Simple FormBuilder for Rails3 using TwitterBootstrap Css Framework

## Installation

Add this line to your application's Gemfile:

    gem 'twitter_bootstrap_form_builder', :git => "git@github.com:llopez/twitter_bootstrap_form_builder.git"

And then execute:

    $ bundle

## Usage

It is very simple. Do the next.

    = form_for @resource, builder: TwitterBootstrapFormBuilder::FormBuilder, html: {class: "form-horizontal"} do |f|
      = f.text_field :name
      = f.submit
      
And you will get the following:

    <form>
      <div class="control-group">
        <label class="control-label" for="resource_name">Name</label>
        <div class="controls">
          <input type="text" id="resource_name" name="resource[name]">
          <span class="help-inline">Errors appear here.</span>
        </div>
      </div>
      <div class="control-group">
        <div class="controls">
          <input class="btn" name="commit" type="submit" value="Submit">
        </div>
      </div>
    </form>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
