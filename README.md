# azisaba-commander-composed

Assembled azisaba-commander package

## installation

1. clone repository with ``--recursive``

```shell
git clone https://github.com/testusuke/azisaba-commander-composed.git --recursive
```


2. move ``config/api`` directory, configure setting files.

``.env``
```
PORT={PORT}

# application url
APP_URL=http://{IP_ADDRESS}

# mysql server configuration
DB_HOST=localhost
DB_USER=user
DB_PASSWORD=password
DB_PORT=3306
DB_DATABASE=db

# docker config file path
CONFIG_PATH=./config.json

# 2fa label and issuer
2FA_LABEL = net.example.commander
2FA_ISSUER = Commander
```

``config.json``
```json
{
  "docker": [
    {
      "name": "docker-1",
      "protocol": "unix",
      "socket": "/var/run/docker.sock"
    },
  ]
}
```


3. move ``config/panel`` directory.

Fill ``RANDOM_STRING`` with command ``openssl rand -base64 32``

``.env``
```
NEXT_PUBLIC_API_BASE_URL=http://{IP_ADDRESS}/
SECRET={RANDOM_STRING}
NEXTAUTH_URL=http://{IP_ADDRESS}
```

4. run it!

``docker compose up -d``