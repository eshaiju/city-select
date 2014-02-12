# City-Select

Provides a simple helper to get an HTML select list of cities.  The list of countries comes from the ISO 3166 standard.  While it is a relatively neutral source of country names, it may still offend some users.

Users are strongly advised to evaluate the suitability of this list given their user base.


## Installation

Install as a gem using

    gem install city-select

Or put the following in your Gemfile

    gem 'city-select'

## Example

Simple use supplying model and attribute as parameters:

    country_select("user", "city_name", "country_name")


Copyright (c) 2014 Shaiju E, released under the MIT license
