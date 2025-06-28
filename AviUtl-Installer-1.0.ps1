#Requires -Version 5.1
chcp 932 | Out-Null
Write-Output "***********************************************"
Write-Output "AviUtl インストーラー"
Write-Output "***********************************************"
Write-Output "AviUtlはC:\AviUtlにインストールされます。"
$install_choice = Read-Host "AviUtlをインストールしてもよろしいですか(y/n)"
if ($install_choice -ceq "y") {
Write-Output "AviUtlのインストール中です...しばらくお待ち下さい。"
Write-Output "インストールフォルダを作成しています..."
try {
New-Item -ItemType Directory -Name "AviUtl" -Path "C:\"
Write-Output "インストールフォルダを作成しました。"
} catch {
Write-Output "インストールフォルダの作成に失敗しました。"
Write-Output "どれかのキーを押すと終了します..."
Read-Host | Out-Null
Exit 1
}
if ([System.IO.Directory]::Exists("C:\AviUtl")) {
Set-Location "C:\AviUtl"
} else {
Write-Output "AviUtlのインストールフォルダが存在しません。"
Write-Output "どれかのキーを押すと終了します..."
Read-Host | Out-Null
Exit 1
}
Write-Output "AviUtl本体をダウンロードしています..."
try {
Invoke-WebRequest -Uri "https://spring-fragrance.mints.ne.jp/aviutl/aviutl110.zip" -OutFile "aviutl110.zip"
Write-Output "ダウンロードが完了しました。"
} catch {
Write-Output "ダウンロードに失敗しました。"
Write-Output "どれかのキーを押すと終了します..."
Read-Host | Out-Null
Exit 1
}
Write-Output "AviUtl本体を解凍しています..."
try {
Expand-Archive -Path "aviutl110.zip" -DestinationPath "."
Write-Output "解凍が完了しました。"
} catch {
Write-Output "解凍に失敗しました。"
Write-Output "どれかのキーを押すと終了します..."
Read-Host | Out-Null
Exit 1
}
Write-Output "拡張編集をダウンロードしています..."
try {
Invoke-WebRequest -Uri "https://spring-fragrance.mints.ne.jp/aviutl/exedit92.zip" -OutFile "exedit92.zip"
Write-Output "拡張編集のダウンロードが完了しました。"
} catch {
Write-Output "拡張編集のダウンロードに失敗しました。"
Write-Output "どれかのキーを押すと終了します..."
Read-Host | Out-Null
Exit 1
}
Write-Output "拡張編集を解凍しています..."
try {
Expand-Archive -Path "exedit92.zip" -DestinationPath "."
Write-Output "拡張編集の解凍が完了しました。"
} catch {
Write-Output "拡張編集の解凍に失敗しました。"
Write-Output "どれかのキーを押すと終了します..."
Read-Host | Out-Null
Exit 1
}
Write-Output "ほぼ必須なプラグインをインストールしますか?"
Write-Output "以下がほぼ必須なプラグインです:"
$AlmostRequiredPlugins = "patch.aul", "L-SMASH works", "x264guiEx", "かんたんMP4出力"
foreach ($RequiredPlugin in $AlmostRequiredPlugins) {
Write-Output $RequiredPlugin
}
Write-Output "a=すべてインストール"
Write-Output "n=インストールしない"
$AlmostRequireChoice = Read-Host "選択してください"
if ($AlmostRequireChoice -ceq "a") {
Write-Output "プラグインのダウンロード中です..."
Write-Output "patch.aulをダウンロードしています..."
try {
Invoke-WebRequest -Uri "https://github.com/ePi5131/patch.aul/releases/download/r42_beta1/patch_r42_beta1.zip" -OutFile "patch_r42_beta1.zip"
Write-Output "patch.aulのダウンロードが完了しました。"
} catch {
Write-Output "patch.aulのダウンロードに失敗しました。"
Write-Output "どれかのキーを押すと終了します..."
Read-Host | Out-Null
Exit 1
}
Write-Output "patch.aulを解凍しています..."
try {
Expand-Archive -Path "patch_r42_beta1.zip" -DestinationPath "."
Write-Output "patch.aulの解凍が完了しました。"
} catch {
Write-Output "patch.aulの解凍に失敗しました。"
}
Write-Output "L-SMASH worksをダウンロードしています..."
try {
Invoke-WebRequest -Uri "https://github.com/Mr-Ojii/L-SMASH-Works-Auto-Builds/releases/download/build-2025-06-22-01-24-56/L-SMASH-Works_r1151_Mr-Ojii_vimeo.zip" -OutFile "L-SMASH-Works_r1151_Mr-Ojii_vimeo.zip"
Write-Output "L-SMASH worksのダウンロードが完了しました。"
} catch {
Write-Output "L-SMASH worksのダウンロードに失敗しました。"
Write-Output "どれかのキーを押すと終了します..."
Read-Host | Out-Null
Exit 1
}
Write-Output "pluginsフォルダを作成しています..."
try {
New-Item -ItemType Directory -Path "." -Name "plugins"
} catch {
Write-Output "pluginsフォルダの作成に失敗しました。"
Write-Output "どれかのキーを押すと終了します..."
Read-Host | Out-Null
Exit 1
}
Write-Output "L-SMASH worksを解凍しています..."
try {
Expand-Archive -Path "L-SMASH-Works_r1151_Mr-Ojii_vimeo.zip" -DestinationPath "plugins" -Force
Write-Output "L-SMASH worksの解凍が完了しました。"
} catch {
Write-Output "L-SMASH worksの解凍に失敗しました。"
Write-Output "どれかのキーを押すと終了します..."
Read-Host | Out-Null
Exit 1
}
Write-Output "x264guiExをダウンロードしています..."
try {
Invoke-WebRequest -Uri "https://github.com/rigaya/x264guiEx/releases/download/3.31/x264guiEx_3.31v3.zip" -OutFile "x264guiEx_3.31v3.zip"
Write-Output "x264guiExのダウンロードが完了しました。"
} catch {
Write-Output "x264guiExのダウンロードに失敗しました。"
Write-Output "どれかのキーを押すと終了します..."
Read-Host | Out-Null
Exit 1
}
Write-Output "x264guiExを解凍しています..."
try {
New-Item -ItemType Directory -Path $env:TEMP -Name "x264guiEx"
Expand-Archive -Path "x264guiEx_3.31v3.zip" -DestinationPath "$($env:TEMP)\x264guiEx"
Write-Output "x264guiExの解凍が完了しました。"
} catch {
Write-Output "x264guiExの解凍に失敗しました。"
Write-Output "どれかのキーを押すと終了します..."
Read-Host | Out-Null
Exit 1
}
Write-Output "x264guiExをpluginsフォルダに移動しています..."
try {
New-Item -ItemType Directory -Path "." -Name "exe_files"
Move-Item "$($env:TEMP)\x264guiEx\x264guiEx_3.31v3\exe_files\*" -Destination "exe_files" -Force
Move-Item "$($env:TEMP)\x264guiEx\x264guiEx_3.31v3\plugins\*" -Destination "plugins" -Force
Write-Output "x264guiExの移動が完了しました。"
} catch {
Write-Output "x264guiExの移動に失敗しました。"
Write-Output "どれかのキーを押すと終了します..."
Read-Host | Out-Null
Exit 1
}
Write-Output "かんたんMP4出力をダウンロードしています..."
try {
Invoke-WebRequest -Uri "https://aoytsk.blog.jp/aviutl/easymp4.zip" -OutFile "easymp4.zip"
Write-Output "かんたんMP4出力のダウンロードが完了しました。"
} catch {
Write-Output "かんたんMP4出力のダウンロードに失敗しました。"
Write-Output "どれかのキーを押すと終了します..."
Read-Host | Out-Null
Exit 1
}
Write-Output "かんたんMP4出力を解凍しています..."
try {
Expand-Archive -Path "easymp4.zip" -DestinationPath "."
Write-Output "かんたんMP4出力の解凍が完了しました。"
} catch {
Write-Output "かんたんMP4出力の解凍に失敗しました。"
Write-Output "どれかのキーを押すと終了します..."
Read-Host | Out-Null
Exit 1
}
} elseif ($AlmostRequireChoice -ceq "n") {
Write-Output "プラグインのインストールをキャンセルしました。"
Write-Output "どれかのキーを押すと終了します..."
Read-Host | Out-Null
Exit 2
} else {
Write-Output "無効な選択です。"
Write-Output "どれかのキーを押すと終了します..."
Read-Host | Out-Null
Exit 3
}
Write-Output "AviUtlのインストールが完了しました。"
Write-Output "ショートカットを作成するには、デスクトップを右クリックし、新規作成>ショートカットをクリックし、項目の場所はC:\AviUtl\aviutl.exeにして、画面に従って操作します。"
Write-Output "どれかのキーを押すと終了します..."
Read-Host | Out-Null
Exit 0
} elseif ($install_choice -ceq "n") {
Write-Output "キャンセルしました。"
Write-Output "どれかのキーを押すと終了します..."
Read-Host | Out-Null
Exit 2
} else {
Write-Output "無効な選択です。"
Write-Output "どれかのキーを押すと終了します..."
Read-Host | Out-Null
Exit 3
}