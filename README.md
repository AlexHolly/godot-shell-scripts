# godot-shell-scripts

For more details see http://docs.godotengine.org/en/latest/reference/_compiling.html

## build.sh

  Export a project, put this in the project folder. It will eport your linux project to ../exports/projectname
  
## build-all.sh

  Add all projectnames to the list to make batch exports, needs a build.sh in each project. Place this script in the same folder where your projects are located.

## update-godot.sh

  This script will pull from repo and build the godot engone for linux. It also builds the templates for linux and windows and puts them to the correct godot cache templates folder.
  It will also add godot as global script so that you can use "godot -h" commands.
  
  1.Place this script inside your cloned godot folder.
  2.Update the git pull command.
  
  
## update-docs.sh

  Place this script inside your cloned godot folder. Make sure you have build godot first(update-godot.sh).
  It will update the docs inside doc/base/classes.xml
  
## debug.sh

  TODO
