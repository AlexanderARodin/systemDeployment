help:
	@echo "empty help"
	
init:
	@echo "rise EXECUTABLE flag for <./scripts/*.sh>"
	@chmod -vR +x ./scripts/*.sh
	
local-preset:
	@./scripts/localUserPreset.sh
	
global-preset:
	@sudo ./scripts/globalUserPreset.sh
	
