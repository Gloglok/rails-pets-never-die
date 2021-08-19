App production: <a href="https://pets-never-die.cleverapps.io/" target="_blank">here</a>

# To start app:

```console
git clone git@github.com:Gloglok/rails-pets-never-die.git
cd rails-pets-never-die
touch .env
bundle install
yarn install
rails db:create
rails db:migrate
rails db:seed
rails s
```

## Don't forget to add cloudinary and mapbox api key url into .env file
CLOUDINARY_URL=cloudinary://*************
MAPBOX_API_KEY=**************************
