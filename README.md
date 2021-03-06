# Setup Project

- clone this repo to the same catalog that your project is
- make soft-link to the `.docker` directory
- below we assume that your project directory is in `~/project/`
  Example:
```bash
ln -s ~/conversio-docker/.docker ~/project/.docker
```
- run: `cd ~/conversio-docker/.docker && cp .env.example .env`
- set up `.env` variables

# Setup Laravel `.env` settings
```
DB_CONNECTION=mysql
DB_HOST=database
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=root
DB_PASSWORD=root
```
Warning! Change `DB_HOST=database` only if you change `database` service name in `docker-compose.yml` otherwise you won't connect to database container from the application.

# Run project

- `cd ~/conversio-docker/.docker`
- `./runProject.sh`

# Stop Project

Hit `CTRL + C`. <br />
If something goes wrong in the same directory type `sudo docker-compose down`. <br />

# Set up Xdebug

To change the settings for proper Xdebug version: <br />
If you still have version 2 run: <br />`cd .docker/php-dev/my-php-ini && cp php_xdebug2.ini php.ini` <br />
To turn off xdebug set `xdebug.mode=off` <br />
Reference: https://xdebug.org/docs/all_settings#xdebug.mode

# PHPStorm Debugging Issues

- Path mappings must be set from `project` dir to `/var/www/html`
- Servers -> Name must be `application`
- Debug port: `9001`
- "Additional listen on Xdebug 3 port 9003" option is turned ON. 
