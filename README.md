### My dotfiles for Windows
- Install Nerd font
- Download Windows Terminal
- In Windows Terminal set font to nerd font
- Change font size to 14
- Open settings.json in windows terminal settings
- Copy gruvbox color scheme in settings.json in:
- C:\Users\{USERNAME}\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState
- Change color scheme to gruvbox
- Download powershell
- Open powershell in windows terminal
- Change default profile to powershell in windows terminal
- Restart terminal
- Install scoop
- $ iwr -useb get.scoop.sh | iex
- C:\Users\hoaxdream\scoop\apps\scoop\current\lib\install.ps1
- change:
	- return !(install_info $app (current_version $app $global) $global)
	- return !(install_info $app (Select-CurrentVersion -AppName $app -Global:$global) $global)
- $ scoop install curl sudo jq
- $ curl 'https://api.inkdrop.app/' | jq .
- $ winget install -e --id Git.Git
- $ scoop install neovim gcc
- $ mkdir .config/powershell
- Copy the following to C:\Users\hoaxdream\.config\powershell
	- hoaxdream.omp.json
	- nu4a.omp.json
	- user_profile.ps1
- make folder name powershell in Documents
- $ nvim $PROFILE.CurrentUserCurrentHost
- `. $env:USERPROFILE\.config\powershell\user_profile.ps1`
- $ Install-Module posh-git -Scope CurrentUser -Force
- $ Install-Module oh-my-posh -Scope CurrentUser -Force
- Restart terminal
- $ cd .config/powershell
- $ Install-Module -Name Terminal-Icons -Repository PSGallery -Force
- $ Insall-Module -Name z -Force
- $ Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
- $ scoop install fzf
- $ Install-Module -Name PSFzf -Scope CurrentUser -Force
- Restart terminal

#### Mpv
- Install mpv: https://mpv.io/installation/
- Move mpv folder in C:\Program Files\mpv
- Go to installer run as admin mpv-install.bat
- On root folder run as admin updater.bat and install yt-dlp
- Copy portable_config to mpv folder installer
- Copy shaders to C:\Users\hoaxdream\AppData\Roaming\mpv
- Add mpv to path:
    - Open settings, about then click Advanced system settings
    - Click Environment Variables
    - Click Path in System variables and edit
    - Click new then add: C:\Program Files\mpv
- use mpv --profile=H60 https://youtube/link
#### Sublime
- Copy Preferences.sublime-settings to:
    - C:\Users\hoaxdream\AppData\Roaming\Sublime Text\Packages\User

### Tweaks
#### Remap Keys
- Open regedit Windows Key+R
- Navigate in:
    - HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout
- In the right pane right click then add Binary value and name it:
    - Scancode Map
- Then add one of the following:

**Map Capslock to Escape**
00  00  00  00  00  00  00  00
02  00  00  00  01  00  3A  00
00  00  00  00

**Swap Capslock and Escape**
00 00 00 00 00 00 00 00
03 00 00 00 3a 00 01 00
01 00 3a 00 00 00 00 00

**Map Capslock to ScrollLock**
00 00 00 00 00 00 00 00
03 00 00 00 3a 00 46 00
01 00 3a 00 00 00 00 00

#### Add control panel in context menu windows 10
#### https://www.thewindowsclub.com/control-panel-desktop-context-menu-windows
- Open regedit Windows Key+R
- Navigate in:
    - HKEY_CLASSES_ROOT\DesktopBackground\Shell
- In the left pane, create a subkey using Right click in Shell -> New -> Key
- Name it ControlPanel
- In the right pane of ControlPanel, create three strings with corresponding data:
    - MUIVerb: Control Panel
    - SubCommands: CP-Category;CP-Icons;CP-AllTasks
    - Icon:  imageres.dll,-27

- Add cascade options and navigate in:
    - HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell

- In the left pane, create a subkey using Right click in shell -> New -> Key and name it:
    - CP-Icons
- Modify CP-Icons default value in right pane with:
    - Icons View
- Add another string and value in CP-Icons:
    - Icon: imageres.dll,-27

- In the left pane, create a subkey using Right click in shell -> New -> Key and name it:
    - CP-Category
- Modify CP-Category default value in right pane with:
    - Category View
- Add another string and value in CP-Category:
    - Icon: imageres.dll,-27

- In the left pane, create a subkey using Right click in shell -> New -> Key and name it:
    - CP-AllTasks
- Modify CP-AllTasks default value in right pane with:
    - All Tasks
- Add another string and value in CP-AllTasks:
    - Icon: imageres.dll,-27

- Create sub key to CP-Icons, CP-Category, CP-AllTasks using right click in each one -> New -> Key and name it:
    - command
- In CP-Icons edit Default value string in the right pane:
    - explorer.exe shell:::{21EC2020-3AEA-1069-A2DD-08002B30309D}
- In CP-Category edit Default value string in the right pane:
    - explorer.exe shell:::{26EE0668-A00A-44D7-9371-BEB064C98683}
- In CP-AllTasks edit Default value string in the right pane:
    - explorer.exe shell:::{ED7BA470-8E54-465E-825C-99712043E01C}
- Done, Press Windows Key+D to access Desktop and right click for control panel

#### Disable windows shake
- Open regedit Windows Key+R
- Navigate in:
    - HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced
- Create 32Dword and name it:
    - DisallowShaking
        - 0 = enable
        - 1 = disable

#### Delete gitbash context menu
- Open regedit Windows Key+R
- Navigate in:
    - HKEY_CLASSES_ROOT\Directory\shell\git_gui
    - HKEY_CLASSES_ROOT\Directory\shell\git_shell
    - HKEY_CLASSES_ROOT\LibraryFolder\background\shell\git_gui
    - HKEY_CLASSES_ROOT\LibraryFolder\background\shell\git_shell
    - HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\git_gui
    - HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\git_shell

#### Programs
- 7zip
- geek uninstaller
- idm
- mpv
- qbitorrent
- sublime text
- vc redist x86
- vc redist x64
- vcredist x86
- google chrome
- battlenet
- steam
- gog galaxy