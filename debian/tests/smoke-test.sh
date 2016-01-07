#!/bin/sh

exec 2>&1
set -ex

cd $ADTTMP

rails new foo
cd foo

cat >> vendor/assets/javascripts/application.js <<EOF
# =require favico.js
EOF

cat >> Gemfile <<EOF
gem 'rails-asset-jqueryui'
EOF

bundle install --local
bundle exec rake assets:precompile
