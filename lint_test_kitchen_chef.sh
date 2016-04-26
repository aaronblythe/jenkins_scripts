#!/usr/bin/env bash

foodcritic .
#chef exec bundle install
chef gem install rubocop-checkstyle_formatter
chef gem install kitchen-docker
chef exec rubocop \
--require rubocop/formatter/checkstyle_formatter \
--format RuboCop::Formatter::CheckstyleFormatter -o reports/xml/checkstyle-result.xml \
--format html -o reports/html/index.html || true
export KITCHEN_YAML=.kitchen.docker.yml
#kitchen diagnose --all
kitchen converge
kitchen verify
kitchen destroy
