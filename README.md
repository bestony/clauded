# Clauded: Dockerd Claude Code Cli

A Docker container for running [Claude Code](https://docs.anthropic.com/en/docs/claude-code), Anthropic's official CLI tool for Claude AI, in a containerized environment.

## Features

- Run Claude Code without local installation
- Pre-configured with all necessary dependencies
- Easy volume mounting for project access
- Environment variable support for API keys
- Quick setup and deployment


## Quick Start

Install [Docker](https://www.docker.com/products/docker-desktop/) (and [WSL](https://learn.microsoft.com/en-us/windows/wsl/install) on Windows). Then copy'n'paste into your terminal:

```bash
alias clauded='docker run --rm -it -e ANTHROPIC_AUTH_TOKEN="${ANTHROPIC_AUTH_TOKEN}" -e ANTHROPIC_BASE_URL="${ANTHROPIC_BASE_URL}" -e ANTHROPIC_API_KEY="${ANTHROPIC_API_KEY}" -v ${PWD}:/app -v ~/.claude:/home/$(whoami)/.claude -u $(id -u):$(id -g)  bestony/clauded'
```

## Prerequisites

- Docker installed on your system                                                                                                                     - Anthropic API key (get one from [Anthropic Console](https://console.anthropic.com/))

## Configuration

### Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `ANTHROPIC_API_KEY` | Your Anthropic API key | Yes |
| `ANTHROPIC_AUTH_TOKEN` | Alternative authentication token | No |
| `ANTHROPIC_BASE_URL` | Custom API base URL | No |


## Development

To contribute or modify this project:

1. Clone the repository
2. Make your changes to the Dockerfile or Makefile
3. Test with `make local-test`
4. Submit a pull request

## Troubleshooting

### API Key Issues

Make sure your `ANTHROPIC_API_KEY` is properly set and valid:

```bash
echo $ANTHROPIC_API_KEY
```


## License

This project is open source. Please check the Claude Code documentation for Anthropic's terms of service.

## Links

- [Claude Code Documentation](https://docs.anthropic.com/en/docs/claude-code)
- [Anthropic Console](https://console.anthropic.com/)
- [Docker Hub](https://hub.docker.com/)

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.


## Inspiration
This project is inspired by [Rails Docked](https://github.com/rails/docked)
