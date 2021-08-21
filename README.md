# NodeJS + TypeScript Boilerplate project.

## Getting Started

First, run the development server:

```bash
# STEP 1 (This step needs to be run only once)
npm run build-ts
# or
yarn build-ts

#it complile filest time your ts code, then run:

# STEP 2
npm run dev
# or
yarn dev

# Start coding 🙂
```


## What this boilerplate includes

- Dockerfile
- All types for imported modules (for better IDE support, code completion)
- Fully jest config for TypeScript support
- ESlint config with full TypeScript support
- Huge gitignore with all possible ignored files

## Pushing code to Docker cloud
```
docker build -t YOUR_DOCKER_NAME/YOUR_CONTAINERNAME . && docker push YOUR_DOCKER_NAME/YOUR_CONTAINER_NAME
```

## Run and test Docker container locally

```
docker run -p YOUR_HOST_NUMBER:YOUR_PORT -d --env-file ./.env --name YOUR_CONTAINER_NAME YOUR_DOCKER_NAME/YOUR_CONTAINER_NAME
```
