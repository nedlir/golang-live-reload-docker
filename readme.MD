## Build image

```
docker build -t my-go-app .
```

## Run container

the change between the commands differs in how the working directory is printed in each terminal emulator

### Linux / macOS (Bash):

```
docker run -p 8080:8080 --rm -v "$(pwd):/app" -v go-app-tmp:/app/tmp --name go-app-dev my-go-app
```

### Powershell:

```
docker run -p 8080:8080 --rm -v "${PWD}:/app" -v go-app-tmp:/app/tmp --name go-app-dev my-go-app
```

### CMD:

```
docker run -p 8080:8080 --rm -v "%cd%:/app" -v go-app-tmp:/app/tmp --name go-app-dev my-go-app
```

---

That's it. 😎
