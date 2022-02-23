install: ## Install Auto-build
	@cd installers && chmod 777 install.sh && ./install.sh
 
uninstall: ## Uninstall Auto-build
	@cd installers && chmod 777 uninstall.sh && ./uninstall.sh

update: ## Update Auto-build
	@cd installers && chmod 777 update.sh && ./update.sh
 
.DEFAULT_GOAL := help
.PHONY: help install uninstall update
 
help:  ## インストールツールの使い方を表示します。
	@echo "***Auto-build install tool***"
	@echo "[e.g.] $ sudo make install"
	@echo ""
	@grep -E '^[0-9a-zA-Z_-]+[[:blank:]]*:.*?## .*$$' $(MAKEFILE_LIST) | sort \
	| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[1;32m%-15s\033[0m %s\n", $$1, $$2}'
