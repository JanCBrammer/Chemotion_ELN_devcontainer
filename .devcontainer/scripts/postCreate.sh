#!/bin/bash

# adjust config files for chemotion
cp public/welcome-message-sample.md public/welcome-message.md
cp config/datacollectors.yml.example config/datacollectors.yml
cp config/storage.yml.example config/storage.yml
cp config/database.yml.example config/database.yml
sed -i 's/host: .*/host: db/g' config/database.yml

# install dependencies
yarn install
bundle install
bash .devcontainer/scripts/installAdditionalDependencies.sh

# set up database
bash .devcontainer/scripts/initiateDatabase.sh
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
