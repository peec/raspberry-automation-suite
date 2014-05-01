# CONFIG
RASPAI_PATH="/home/pi/raspai"


# SCRIPT


# PHP Automation
sudo ln -s "$RASPAI_PATH/init.d/raspai_phpautomation" "/etc/init.d/raspai_phpautomation"
sudo update-rc.d -f raspai_phpautomation remove
sudo update-rc.d -f raspai_phpautomation defaults
sudo chmod +x /etc/init.d/raspai_phpautomation


# SHAIRPORT
sudo ln -s "$RASPAI_PATH/init.d/raspai_shairport" "/etc/init.d/raspai_shairport"
sudo update-rc.d -f raspai_shairport remove
sudo update-rc.d -f raspai_shairport defaults
sudo chmod +x /etc/init.d/raspai_shairport

# STREAM
sudo ln -s "$RASPAI_PATH/init.d/raspai_stream" "/etc/init.d/raspai_stream"
sudo update-rc.d -f raspai_stream remove
sudo update-rc.d -f raspai_stream defaults
sudo chmod +x /etc/init.d/raspai_stream
