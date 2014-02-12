# CitySelect
module ActionView
  module Helpers
    module FormOptionsHelper

      CITIES = ["Malappuram", "Cochin", "Thrisur", "Manjeri"] unless const_defined?("CITIES")

      def city_select(object, method, country, options = {}, html_options = {})
       InstanceTag.new(object, method, self, options.delete(:object)).to_city_select_tag(country, options, html_options)
      end

      def city_options_for_select(selected = nil, country = nil)
        city_options = ""
        city_options = city_options.html_safe if city_options.respond_to?(:html_safe)

        return city_options + options_for_select(CITIES, selected)
      end
    end

    class InstanceTag
      def to_city_select_tag(country, options, html_options)
        html_options = html_options.stringify_keys
        add_default_name_and_id(html_options)
        value = value(object)
        content_tag("select",
          add_options(
            city_options_for_select(value, country),
            options, value
          ), html_options
        )
      end
    end

    class FormBuilder
      def city_select(method, country , options = {}, html_options = {})
        @template.city_select(@object_name, method, country, options.merge(:object => @object), html_options)
      end
    end
  end
end
