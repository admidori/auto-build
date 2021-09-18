install: ## Auto-buildをインストールします。
	@cd installers && chmod 777 install.sh && ./install.sh
 
uninstall: ## Auto-buildをアンインストールします。
	@cd installers && chmod 777 uninstall.sh && ./uninstall.sh
 
.DEFAULT_GOAL := help
.PHONY: help install uninstall
 
help:  ## インストールツールの使い方を表示します。
	@echo "***Auto-build インストールツール***"
	@echo "行いたい動作に合わせて以下を選択してください。sudoを付けることに留意してください。"
	@echo "[e.g.] $ sudo make install"
	@echo ""
	@grep -E '^[0-9a-zA-Z_-]+[[:blank:]]*:.*?## .*$$' $(MAKEFILE_LIST) | sort \
	| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[1;32m%-15s\033[0m %s\n", $$1, $$2}'