# Wiremock


    docker-compose up -d

http://localhost:8085/__admin/mappings


    curl http://localhost:8085/api/v1/todos


    curl -v -d @people-openapi.yml http://localhost:8085/__admin/mappings/import


OpenAPI to Stubs

https://app.wiremock.cloud/

14 days trial

# Prism

Binary

    curl -L https://raw.githack.com/stoplightio/prism/master/install | sudo sh

Docker

    docker run --init -p 4010:4010 stoplight/prism mock -h 0.0.0.0 people-openapi.yml

## Graphql

npm i -g openapi-to-graphql-cli

openapi-to-graphql-cli openapi.yml --save graphql.yml

## References

* [prism](https://docs.stoplight.io/docs/prism/cfa6f7191e544-errors)