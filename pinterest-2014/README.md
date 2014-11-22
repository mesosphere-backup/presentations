# Run Distributed Applications Like a Boss with Marathon

## Why Mesos?

- Static partitioning doesn't scale
- Use dynamic allocation instead

## Mesos Intro

- Mesos is a resource broker and isolator
- Also provides an SDK for distributed apps
- Apps that interact with Mesos are called Frameworks

### Cluster Scheduling

- It's hard (NP-Hard)
- Approaches boil down to heuristics
- Monolithic algorithms need lots of info to make decisions
- Mesos breaks this into two levels to push decisions
  down to where that information is (the app)

### High Level View of Mesos

- A framework consists of a scheduler and an executor
- Schedulers receive resource offers from Mesos
- Executors run tasks
- Task semantics depend on the framework

## Say hi to Marathon

- A self-serve interface for developers to run code in
  your datacenter

### Apps for your tasks

- Provides an abstraction over Mesos tasks

### UI Preview!

- List of apps
- Task detail
- Create new Task button

### It's RESTful!

- `POST /v2/apps`
- `GET /v2/apps

### Feature Overview

- App creation
- Automatic restart

### Live Demo!

- A simple python web app...
- Marathon JSON to describe the app
- A one-line launch script
- Voilá!
- Toggle a task's health
- Watch it turn unhealthy, and get killed

## Service Discovery

- Set environment variables
- Read config from device (rsync to fs?)
- Read from highly available K-V store
- Use DNS
- Describe HAProxy solution

## Get excited for new features

- Namespaces
- Dependencies
- Rolling deployments
- Artifact staging
- Executor health checks
- Configurable exponential backoff

## Does it Docker?

- Yes!

### Wait, Docker?

- decouple dev & ops
- `docker build`
- I'll run your containers
- DockerHub, private Docker registry

### Initial support

- Uses existing ContainerInfo
- Hangs off of docker:// protocol prefix
- Works with releases of Marathon back to 0.6.0

### Planned support

- Plans to support Docker as a 1st class citizen
- New DockerInfo protobuf message
- One of these two will land (0.19.1 or 0.20.0 at the latest)
