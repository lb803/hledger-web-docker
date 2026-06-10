# hledger-web Docker

A Docker container for running [hledger-web](https://hledger.org/web.html), the web interface for hledger, a plain text accounting tool.

## Build

```bash
docker build . -t lb803/hledger
```

## Run

```bash
docker run -p 8080:5000 -v /path/to/folder:/data lb803/hledger
```

## Usage

After starting the container, access the web interface at `http://localhost:8080`.

**Note:** The `--allow=edit` flag is enabled, allowing file editing through the web interface.

## Security

hledger-web has no built-in authentication. For production use, run it behind a reverse proxy (e.g., Caddy) with basic authentication enabled.

## Data Persistence

Mount a local folder to `/data` in the container, or use Docker volumes to persist your ledger files.
