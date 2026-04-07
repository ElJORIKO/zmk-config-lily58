podman run --rm -it \
		-v "$PWD:/work" \
		-w "/work" \
		docker.io/library/python:3.12-slim \
		sh -lc "pip install keymap-drawer && \
			keymap parse -z config/lily58.keymap > keymap-lily58.yaml && \
			keymap draw keymap-lily58.yaml > keymap-lily58.svg"
