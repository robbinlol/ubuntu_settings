.PHONY: clash_on, clash_off, terminate_on, terminate_off

clash_on:
	@docker-compose up -d
	@gsettings set org.gnome.system.proxy mode "manual"
	@bash proxy.sh
	@echo "Open Clash..."

clash_off:
	@docker-compose down
	@gsettings set org.gnome.system.proxy mode "none"
	@echo "Close Clash..."

terminate_on:
	@export http_proxy=http://127.0.0.1:7890
	@export https_proxy=http://127.0.0.1:7890
	@echo "Finsh Terminate Proxy Setting..."

terminate_off:
	@unset http_proxy https_proxy
	@echo "Unset Terminate Proxy Setting..."