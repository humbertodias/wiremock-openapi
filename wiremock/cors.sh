#!/bin/bash
#Use the parameters like: FILENAME VERB URI STATUS BODYFILE
#i.e. the script call: ./cors.sh test.json GET /api/hello-world 200 hello_world_response.json
touch ./mappings/$1
touch ./__files/$5
echo '{
  "request": {
    "method": "'$2'",
    "url": "'$3'"
  },
  "response": {
    "status": '$4',
    "headers":
    {
        "Content-Type": "application/json",
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Methods": "GET, POST, OPTIONS, PUT, DELETE",
        "Access-Control-Allow-Credentials": "true",
        "Access-Control-Allow-Headers": "Content-Type, Origin, Accept",
        "Access-Control-Expose-Headers": "Content-Type,  Origin, Accept"
    },
    "bodyFileName": "'$5'"
  }
}' > ./mappings/$1

echo '{}' > ./__files/$5
echo "Files created successfully!"