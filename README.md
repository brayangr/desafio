# README

Segunda parte del desafio acid labs

### Local
* Instalar Ruby 2.4.1.
* Instalar rails, version ≥ 5.
* Instalar y configurar postgresql, modificar la configuracion de base de datos de rails de acuerdo a lo que necesites.
* Ejecutar bundle install.
* Ejecutar rails db:migrate, rails db:create, rails db:seed
* Setear la  url de la api en el archivo /config/local_env.yml, se debe setear para todos los entornos. Ejemplo: "https://fast-mountain-55246.herokuapp.com/", no olvidar agregar el slash final.
* Ejecutar rails server

### Heroku
* Instalar heroku, e iniciar sesion.
* Setear la  url de la api en el archivo /config/local_env.yml, se debe setear para todos los entornos. Ejemplo: "https://fast-mountain-55246.herokuapp.com/", no olvidar agregar el slash final y ademas en este caso la url debe ser accesible desde internet
* ejecutar deploy_heroku.sh