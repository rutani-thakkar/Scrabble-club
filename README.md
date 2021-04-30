### Postgres for Database
1. gem 'pg', '~> 1.2'
2. bundle install
3. create database.yml file
4. rails db:create
5. rails db:migrate
6. rails db:seed

### For view file with .haml 
1. gem "haml-rails"
2. bundle install


### Bootstrap Desiging
1. gem 'bootstrap', '~> 4.0.0'
2. bundle install
3. @import "bootstrap"; add into application.scss 

### For font awesome icons use
1. gem 'font-awesome-rails'
2. bundle install


### Release Note
1. Create database.yml file inside config folder; by renaming database.yml.example file
2. Create database
3. Run migrations
3. Run rails db:seed to add records of seeds file
4. Run bundle exec rails webpacker:install ; to install webpacker
5. A leader board screen will display the top 10 average scores, only those members will display who played at least 5 matches 
6. Can add members
7. Can edit members
8. Member's show page will dispaly the members details: name, phone number, email, joining data, total win matches, totals lost matches, average score, highest score with when and where it was scored, and against whom 
9. Added a strong paramter for injection Attacks

