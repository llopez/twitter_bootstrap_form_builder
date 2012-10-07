require "twitter_bootstrap_form_builder/version"

module TwitterBootstrapFormBuilder
  class FormBuilder < ActionView::Helpers::FormBuilder
    delegate :content_tag, to: :@template

    %w(text_field password_field text_area email_field check_box select file_field).each do |method_name|
      define_method(method_name) do |name, *args|
        content_tag :div, class: "control-group #{object.errors[name].any? ? 'error' : ''}" do
          label(name, class: 'control-label') + 
          content_tag(:div, class: 'controls') do
            super(name, *args) + 
            content_tag(:span, class: 'help-inline') do
              object.errors[name].join(', ')
            end
          end
        end
      end
    end

    def submit(*args)
      content_tag :div, class: 'control-group' do
        content_tag(:div, class: 'controls') do
          super(*args, :class => "btn")
        end
      end
    end
  end

  ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
    html_tag
  end
end
