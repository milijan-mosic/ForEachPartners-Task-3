# DJ Auth

1. Open file with higher privileges

```sh
sudo vim /etc/hosts
```

2. Copy these lines into 'hosts' file

```sh
127.0.0.1       app.chat.local
127.0.0.1       pgadmin.chat.local
```

3. Run the project using this command from inside project dir.

```sh
docker-compose -f docker-compose.local.yaml up --build --remove-orphans
```

4. Run script

```sh
bash api/init-dj.sh
```
