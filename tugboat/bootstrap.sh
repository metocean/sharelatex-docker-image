#!/bin/bash
# run this script to fix the mongoose version installed in the original
# sharelatex image and create the admin user 
# (shouldn't be needed in the custom image).

docker exec -it working_sharelatex_1 /bin/bash -c "cd /var/www/sharelatex/web; npm install"
docker exec working_sharelatex_1 /bin/bash -c "cd /var/www/sharelatex/web; grunt create-admin-user --email t.durrant@metocean.co.nz"

