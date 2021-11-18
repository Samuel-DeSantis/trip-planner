module CountryHelper
    def display_country(location)
        @location.country.nil? ? link_to("Add Country", edit_location_path(@location)) : link_to(@location.country_name, country_path(@location.country))
      end
    
      def country_select(location, path)
        if existing_and_nested?
          hidden_field_tag "location[country_id]", @location.country_id
        else
          select_tag "location[country_id]", options_from_collection_for_select(Country.all, :id, :name)
        end
      end
    
      def display_name(location, path)
        if existing_and_nested?
            @location.country.name
        end
      end

      private

      def existing_and_nested?
        @location.country && @path == "nested"
      end
end