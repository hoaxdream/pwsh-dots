#### My dotfiles for Windows
- Install Nerd font
- Download Windows Terminal
- In Windows Terminal set font to nerd font
- Change font size to 14
- Open settings.json in windows terminal settings
- Copy gruvbox color scheme in settings.json
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
