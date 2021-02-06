# Valheim Docker

Setup to run dedicated Valheim server using docker.

Add `.env` file with following variables
```env
NAME="Server Name"
WORLD="Dedicated"
PASSWORD="Secret Password"
```

Then:
```bash
docker-compose up -d
```

To expose to public you need to port forward:
  - 2456-2458