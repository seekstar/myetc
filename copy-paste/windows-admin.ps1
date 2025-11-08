# https://chinanet.mirrors.ustc.edu.cn/help/winget-source.html
winget source remove winget
winget source add winget https://mirrors.ustc.edu.cn/winget-source --trust-level trusted

function refresh-path {
	$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
}
function add-path {
	param([string]$path_to_add)
	$cur_path = [Environment]::GetEnvironmentVariable("path", "user")
	if ($cur_path -split ";" -notcontains $path_to_add) {
		[Environment]::SetEnvironmentVariable("path", $path_to_add + ";" + $cur_path, "user")
	}
}

winget install --accept-source-agreements Git.Git
add-path "C:\Program Files\Git\usr\bin"
refresh-path

mkdir git
cd git
git clone https://gitee.com/searchstar/myetc.git
cd myetc
sh windows.sh
