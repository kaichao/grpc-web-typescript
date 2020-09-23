# grpc-web example (typescript/javascript)

This repo contains a full working example of grpc-web including the server,
envoy proxy and typescript/javascript client

The code is taken from official grpc-web repo https://github.com/grpc/grpc-web/tree/master/net/grpc/gateway/examples/helloworld and modified to make it easier to understand the code and execute.

## Running this example ( client + proxy + server )

```
# compile the proto file
make protoc

# build the docker images
make build

# start the docker containers
make up

# shutdown the docker containers
make down

# clean all protoc-generated files and build-generated docker images 
make clean
```

Open `http://localhost:9901` to access the envoy admin UI.

Open Chrome with developer console, and type `http://localhost:1234` to access the client UI.

The typescript compiled files are included in `client-typescript` directory. 
If you want to change the typescript code, modify the `main.ts` file and compile 
using `tsc` command. Or modify the `main.js` directly.
