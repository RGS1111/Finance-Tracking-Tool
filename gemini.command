#!/bin/zsh
cd "$(dirname "$0")"
source .venv/bin/activate
python3 gemini_ai_test.py

#This file was made as a .sh file AT FIRST, using terminal command (in the correct dir) : touch run.sh
#Then the file was created and I opened it in VSCode and entered the contents, as seen in line 1,3,4 in this file
#Then contents of lines 1,3,4 consist off:
# - 1: Tells the OS what program should run the script, in this case, zsh
# - 3: Runs the .venv file prior to the python script 
# - 4: Runs the python script after the .venv file, which initiates and allows access to google module

#Then I wanted the .sh file to run when double clicked, thus need to turn the .sh file to a .command file:
#Too rename the file from .sh to a .command (mv means move and rename) : mv run.sh run.command
#Too make the .command file an execuatble file (chmod used to change permissions and access, +x means execute): chmod +x run.command
#Line 2 is used to go to the directory the files are located at before running : cd "$(dirname "$0")"