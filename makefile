local-test:
	docker build -t bestony/clauded .
	docker run --rm -it -e ANTHROPIC_AUTH_TOKEN="${ANTHROPIC_AUTH_TOKEN}" -e ANTHROPIC_BASE_URL="${ANTHROPIC_BASE_URL}" -e ANTHROPIC_API_KEY="${ANTHROPIC_API_KEY}" -v ${PWD}:/app -v ~/.claude:/home/$(whoami)/.claude -u $(id -u):$(id -g)  bestony/clauded
