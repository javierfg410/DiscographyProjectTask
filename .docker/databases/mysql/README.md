## HERITAGE

# Install MySQL
If you don't have any MySQL installation on your machine, you can install it with docker:

- Copy folder './databases' outside the project
- Go to the folder './databases/mysql'
- Execute ```docker-compose up -d```
- Now you have a MySQL instance running on your machine
- MySQL credentials:
    - Host: db-mysql
    - Port: 3306
    - User: root
    - Password: root
- Execute ```docker exec -ti db-mysql mysql -u root -p```
