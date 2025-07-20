#! /bin/sh

current_dir="$HOME/.config/colcon_workspace"
current_dir="`( cd \"$current_dir\" && pwd )`"  # absolutized and normalized
colcon_workspaces_file="$current_dir""/colcon_workspaces"
colcon_workspaces=`cat $colcon_workspaces_file`
chosen_workspace=$(echo "$colcon_workspaces" | rofi -dmenu -i -fn "Monospace-13" -p "Which colcon_workspace?")
if [ "$chosen_workspace" = "" ] 
then
    exit 1
fi
chosen_colcon_workspace_file="$current_dir""/chosen_colcon_workspace"
echo "$chosen_workspace" > $chosen_colcon_workspace_file
echo "Chosen colcon workspace: ""$chosen_workspace"
echo "####################################"
echo "# Please execute \`source ~/.zshrc\` #"
echo "####################################"
