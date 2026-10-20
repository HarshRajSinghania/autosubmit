#!/bin/bash

set -eu -o pipefail

HOST_UID=$(id -u)
HOST_GID=$(id -g)
export HOST_UID
export HOST_GID

# Run in the foreground (i.e., not -d).
docker compose up --build

# docker compose ps
# docker compose logs autosubmit
# docker compose logs postgres
# docker compose down --volumes
# docker compose exec autosubmit autosubmit --version
# docker compose exec autosubmit /bin/bash
