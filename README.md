# Wiremock


    docker-compose up -d

http://localhost:8085/__admin/mappings


    curl http://localhost:8085/api/v1/todos


    curl -v -d @people-openapi.yml http://localhost:8085/__admin/mappings/import


OpenAPI to Stubs

https://app.wiremock.cloud/

14 days trial

Reload mapping

curl -XPOST http://localhost:8085/__admin/mappings/reset

Swagger

http://localhost:8085/__admin/swagger-ui/

Recorder

http://localhost:8085/__admin/recorder/

# Prism

Binary

    curl -L https://raw.githack.com/stoplightio/prism/master/install | sudo sh

    prism mock --dynamic -h 0.0.0.0 openapi.yml

Docker

    docker run --rm --platform linux/amd64 -v $(pwd)/prism:/root/apis -p 9003:4010 -t stoplight/prism mock --dynamic -h 0.0.0.0 /root/apis/openapi.yml

## References

* [wiremock-chrome-extension](https://www.mwtestconsultancy.co.uk/wiremock-chrome-extension)
* [prism](https://docs.stoplight.io/docs/prism/cfa6f7191e544-errors)
* [how-to-mock-http-servers-with-stoplight-prism-openapi](https://11sigma.com/blog/2019/10/11/how-to-mock-http-servers-with-stoplight-prism-openapi)
* [prism-docs](https://docs.stoplight.io/docs/prism)
* [vscode-rest-client](https://marketplace.visualstudio.com/items?itemName=humao.rest-client)