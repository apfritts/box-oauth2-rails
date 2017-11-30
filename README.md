# Box OAuth2 App

This is a simple app that can be used to start an app that uses Box's OAuth2 
API to create and sign in users.

## Development Setup

1. Clone the repo

   ```
   git clone https://gitenterprise.inside-box.net/afritts/box-oauth2-rails.git
   ```

2. Install dependencies

   ```
   bundle install
   ```

3. [Register for your app on Box](https://app.box.com/developers/services). Keep your client ID and client secret handy.

3. Setup your secrets.yml file by copying the default and creating a new hash 
   for `secret_key_base`. Copy in your client ID and client secret.
   
   **WARNING:** Use proper secrets management in production!

   ```
   cp config/secrets.yml-default config/secrets.yml
   rails secrets
   ```

4. Create and migrate the database

   ```
   rails db:create && rails db:migrate
   ```

5. Run it!

   ```
   rails s
   ```
