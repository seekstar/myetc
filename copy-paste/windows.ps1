# https://chinanet.mirrors.ustc.edu.cn/help/winget-source.html
winget source remove winget
winget source add winget https://mirrors.ustc.edu.cn/winget-source --trust-level trusted

function refpath {
	$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
}

winget install Git.Git
refpath

mkdir git
git clone https://gitee.com/searchstar/myetc.git
cd myetc
sh winget.sh
