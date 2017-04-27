# mysql_chef_gem CHANGELOG

This file is used to list changes made in each version of the mysql_chef_gem cookbook.

## 4.0.2 (2017-04-27)

- Expand the chefspec helper and remove the report that’s useless
- Update chefignore file for policyfiles

## 4.0.1 (2017-04-26)

- Update apache2 license string

## 4.0.0 (2016-09-16)

- Remove double entries
- Fix some faulty instructions
- Testing updates
- Require Chef 12.1

## v3.0.1 (2016-04-25)

- Updated the readme's list of supported platforms to match current tested platforms
- Added testing of all PRs using Kitchen-Docker in Travis
- Updated Test Kitchen suites to test the most recent platforms / MySQL releases available
- Depend mysql cookbook 6.0+ which was needed by the providers

## v3.0.0 (2015-10-21)

- Removed Chef 10 backwards compatibility. This cookbook requires 11+
- Expanded the requirements and license sections of the readme to match other Chef managed cookbooks
- Added oracle as a supported platform in the metadata
- Added long_description to the metadata
- Added issues_url and source_url to the metadata for Supermarket
- Updated the .gitignore file
- Expanded platforms tested in Test Kitchen
- Added the standard Chef Rubocop config
- Updated Travis CI to use ChefDK for testing deps
- Updated testing and development deps in the Gemfile
- Updated Testing and Contributing docs
- Added maintainers.toml and maintainers.rb files
- Added Travis status and cookbook version badges to the readme
- Added a Rakefile for simplified testing
- Added a chefignore file to limit what files are uploaded to the Chef server

## v2.0.2 (2014-12-26)

- Updating source in Berksfile

## v2.0.1 (2014-12-25)

- Switching to include_recipe from recipe_eval

## v2.0.0 (2014-12-23)

- Reverting to using vendor packages instead of the connector tarball
- Adding support for linking against MariaDB libraries

## v1.0.0 (2014-12-12)

- Removing recipe that contained a single resource
- Removed dependency on mysql cookbook
- Switched to using the MySQL connector libraries tarball from a webserver rather than system development package
- Added serverspec tests
- Updated the README

## v0.0.5 (2014-09-26)

- Reverting installation of ruby dev packages

## v0.0.4 (2014-09-22)

- Fixing some bugs in the README
- Adding more development packages

## v0.0.2 (2014-03-31)

Initial Release

## v0.0.1 (2014-03-28)

- Initial release
