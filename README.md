# Bluesky PDS Admin (Dockerized)

This repository provides a Dockerized version of Bluesky's Personal Data Server (PDS) admin tool.
You can use all available commands from the original PDS admin tool, **except** for the `update` command.

## Usage Examples

```sh
docker run --rm aykhans/bsky-pdsadmin help
```

### Account Management

**List accounts:**

```sh
docker run --rm --env-file /pds/pds.env aykhans/bsky-pdsadmin account list
```

**Create an account:**

```sh
docker run -it --rm --env-file /pds/pds.env aykhans/bsky-pdsadmin account create
```

**Delete an account:**

```sh
docker run -it --rm --env-file /pds/pds.env aykhans/bsky-pdsadmin account delete <DID>
```

**Takedown an account:**

```sh
docker run --rm --env-file /pds/pds.env aykhans/bsky-pdsadmin account takedown <DID>
```

**Untakedown an account:**

```sh
docker run --rm --env-file /pds/pds.env aykhans/bsky-pdsadmin account untakedown <DID>
```

**Reset an account password:**

```sh
docker run --rm --env-file /pds/pds.env aykhans/bsky-pdsadmin account reset-password <DID>
```

### Request a Crawl

```sh
docker run --rm --env-file /pds/pds.env aykhans/bsky-pdsadmin request-crawl
```

### Create an Invite Code

```sh
docker run --rm --env-file /pds/pds.env aykhans/bsky-pdsadmin create-invite-code
```
