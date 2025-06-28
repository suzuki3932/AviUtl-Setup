#Requires -Version 5.1
chcp 932 | Out-Null
Write-Output "***********************************************"
Write-Output "AviUtl �C���X�g�[���["
Write-Output "***********************************************"
Write-Output "AviUtl��C:\AviUtl�ɃC���X�g�[������܂��B"
$install_choice = Read-Host "AviUtl���C���X�g�[�����Ă���낵���ł���(y/n)"
if ($install_choice -ceq "y") {
Write-Output "AviUtl�̃C���X�g�[�����ł�...���΂炭���҂��������B"
Write-Output "�C���X�g�[���t�H���_���쐬���Ă��܂�..."
try {
New-Item -ItemType Directory -Name "AviUtl" -Path "C:\"
Write-Output "�C���X�g�[���t�H���_���쐬���܂����B"
} catch {
Write-Output "�C���X�g�[���t�H���_�̍쐬�Ɏ��s���܂����B"
Write-Output "�ǂꂩ�̃L�[�������ƏI�����܂�..."
Read-Host | Out-Null
Exit 1
}
if ([System.IO.Directory]::Exists("C:\AviUtl")) {
Set-Location "C:\AviUtl"
} else {
Write-Output "AviUtl�̃C���X�g�[���t�H���_�����݂��܂���B"
Write-Output "�ǂꂩ�̃L�[�������ƏI�����܂�..."
Read-Host | Out-Null
Exit 1
}
Write-Output "AviUtl�{�̂��_�E�����[�h���Ă��܂�..."
try {
Invoke-WebRequest -Uri "https://spring-fragrance.mints.ne.jp/aviutl/aviutl110.zip" -OutFile "aviutl110.zip"
Write-Output "�_�E�����[�h���������܂����B"
} catch {
Write-Output "�_�E�����[�h�Ɏ��s���܂����B"
Write-Output "�ǂꂩ�̃L�[�������ƏI�����܂�..."
Read-Host | Out-Null
Exit 1
}
Write-Output "AviUtl�{�̂��𓀂��Ă��܂�..."
try {
Expand-Archive -Path "aviutl110.zip" -DestinationPath "."
Write-Output "�𓀂��������܂����B"
} catch {
Write-Output "�𓀂Ɏ��s���܂����B"
Write-Output "�ǂꂩ�̃L�[�������ƏI�����܂�..."
Read-Host | Out-Null
Exit 1
}
Write-Output "�g���ҏW���_�E�����[�h���Ă��܂�..."
try {
Invoke-WebRequest -Uri "https://spring-fragrance.mints.ne.jp/aviutl/exedit92.zip" -OutFile "exedit92.zip"
Write-Output "�g���ҏW�̃_�E�����[�h���������܂����B"
} catch {
Write-Output "�g���ҏW�̃_�E�����[�h�Ɏ��s���܂����B"
Write-Output "�ǂꂩ�̃L�[�������ƏI�����܂�..."
Read-Host | Out-Null
Exit 1
}
Write-Output "�g���ҏW���𓀂��Ă��܂�..."
try {
Expand-Archive -Path "exedit92.zip" -DestinationPath "."
Write-Output "�g���ҏW�̉𓀂��������܂����B"
} catch {
Write-Output "�g���ҏW�̉𓀂Ɏ��s���܂����B"
Write-Output "�ǂꂩ�̃L�[�������ƏI�����܂�..."
Read-Host | Out-Null
Exit 1
}
Write-Output "�قڕK�{�ȃv���O�C�����C���X�g�[�����܂���?"
Write-Output "�ȉ����قڕK�{�ȃv���O�C���ł�:"
$AlmostRequiredPlugins = "patch.aul", "L-SMASH works", "x264guiEx", "���񂽂�MP4�o��"
foreach ($RequiredPlugin in $AlmostRequiredPlugins) {
Write-Output $RequiredPlugin
}
Write-Output "a=���ׂăC���X�g�[��"
Write-Output "n=�C���X�g�[�����Ȃ�"
$AlmostRequireChoice = Read-Host "�I�����Ă�������"
if ($AlmostRequireChoice -ceq "a") {
Write-Output "�v���O�C���̃_�E�����[�h���ł�..."
Write-Output "patch.aul���_�E�����[�h���Ă��܂�..."
try {
Invoke-WebRequest -Uri "https://github.com/ePi5131/patch.aul/releases/download/r42_beta1/patch_r42_beta1.zip" -OutFile "patch_r42_beta1.zip"
Write-Output "patch.aul�̃_�E�����[�h���������܂����B"
} catch {
Write-Output "patch.aul�̃_�E�����[�h�Ɏ��s���܂����B"
Write-Output "�ǂꂩ�̃L�[�������ƏI�����܂�..."
Read-Host | Out-Null
Exit 1
}
Write-Output "patch.aul���𓀂��Ă��܂�..."
try {
Expand-Archive -Path "patch_r42_beta1.zip" -DestinationPath "."
Write-Output "patch.aul�̉𓀂��������܂����B"
} catch {
Write-Output "patch.aul�̉𓀂Ɏ��s���܂����B"
}
Write-Output "L-SMASH works���_�E�����[�h���Ă��܂�..."
try {
Invoke-WebRequest -Uri "https://github.com/Mr-Ojii/L-SMASH-Works-Auto-Builds/releases/download/build-2025-06-22-01-24-56/L-SMASH-Works_r1151_Mr-Ojii_vimeo.zip" -OutFile "L-SMASH-Works_r1151_Mr-Ojii_vimeo.zip"
Write-Output "L-SMASH works�̃_�E�����[�h���������܂����B"
} catch {
Write-Output "L-SMASH works�̃_�E�����[�h�Ɏ��s���܂����B"
Write-Output "�ǂꂩ�̃L�[�������ƏI�����܂�..."
Read-Host | Out-Null
Exit 1
}
Write-Output "plugins�t�H���_���쐬���Ă��܂�..."
try {
New-Item -ItemType Directory -Path "." -Name "plugins"
} catch {
Write-Output "plugins�t�H���_�̍쐬�Ɏ��s���܂����B"
Write-Output "�ǂꂩ�̃L�[�������ƏI�����܂�..."
Read-Host | Out-Null
Exit 1
}
Write-Output "L-SMASH works���𓀂��Ă��܂�..."
try {
Expand-Archive -Path "L-SMASH-Works_r1151_Mr-Ojii_vimeo.zip" -DestinationPath "plugins" -Force
Write-Output "L-SMASH works�̉𓀂��������܂����B"
} catch {
Write-Output "L-SMASH works�̉𓀂Ɏ��s���܂����B"
Write-Output "�ǂꂩ�̃L�[�������ƏI�����܂�..."
Read-Host | Out-Null
Exit 1
}
Write-Output "x264guiEx���_�E�����[�h���Ă��܂�..."
try {
Invoke-WebRequest -Uri "https://github.com/rigaya/x264guiEx/releases/download/3.31/x264guiEx_3.31v3.zip" -OutFile "x264guiEx_3.31v3.zip"
Write-Output "x264guiEx�̃_�E�����[�h���������܂����B"
} catch {
Write-Output "x264guiEx�̃_�E�����[�h�Ɏ��s���܂����B"
Write-Output "�ǂꂩ�̃L�[�������ƏI�����܂�..."
Read-Host | Out-Null
Exit 1
}
Write-Output "x264guiEx���𓀂��Ă��܂�..."
try {
New-Item -ItemType Directory -Path $env:TEMP -Name "x264guiEx"
Expand-Archive -Path "x264guiEx_3.31v3.zip" -DestinationPath "$($env:TEMP)\x264guiEx"
Write-Output "x264guiEx�̉𓀂��������܂����B"
} catch {
Write-Output "x264guiEx�̉𓀂Ɏ��s���܂����B"
Write-Output "�ǂꂩ�̃L�[�������ƏI�����܂�..."
Read-Host | Out-Null
Exit 1
}
Write-Output "x264guiEx��plugins�t�H���_�Ɉړ����Ă��܂�..."
try {
New-Item -ItemType Directory -Path "." -Name "exe_files"
Move-Item "$($env:TEMP)\x264guiEx\x264guiEx_3.31v3\exe_files\*" -Destination "exe_files" -Force
Move-Item "$($env:TEMP)\x264guiEx\x264guiEx_3.31v3\plugins\*" -Destination "plugins" -Force
Write-Output "x264guiEx�̈ړ����������܂����B"
} catch {
Write-Output "x264guiEx�̈ړ��Ɏ��s���܂����B"
Write-Output "�ǂꂩ�̃L�[�������ƏI�����܂�..."
Read-Host | Out-Null
Exit 1
}
Write-Output "���񂽂�MP4�o�͂��_�E�����[�h���Ă��܂�..."
try {
Invoke-WebRequest -Uri "https://aoytsk.blog.jp/aviutl/easymp4.zip" -OutFile "easymp4.zip"
Write-Output "���񂽂�MP4�o�͂̃_�E�����[�h���������܂����B"
} catch {
Write-Output "���񂽂�MP4�o�͂̃_�E�����[�h�Ɏ��s���܂����B"
Write-Output "�ǂꂩ�̃L�[�������ƏI�����܂�..."
Read-Host | Out-Null
Exit 1
}
Write-Output "���񂽂�MP4�o�͂��𓀂��Ă��܂�..."
try {
Expand-Archive -Path "easymp4.zip" -DestinationPath "."
Write-Output "���񂽂�MP4�o�͂̉𓀂��������܂����B"
} catch {
Write-Output "���񂽂�MP4�o�͂̉𓀂Ɏ��s���܂����B"
Write-Output "�ǂꂩ�̃L�[�������ƏI�����܂�..."
Read-Host | Out-Null
Exit 1
}
} elseif ($AlmostRequireChoice -ceq "n") {
Write-Output "�v���O�C���̃C���X�g�[�����L�����Z�����܂����B"
Write-Output "�ǂꂩ�̃L�[�������ƏI�����܂�..."
Read-Host | Out-Null
Exit 2
} else {
Write-Output "�����ȑI���ł��B"
Write-Output "�ǂꂩ�̃L�[�������ƏI�����܂�..."
Read-Host | Out-Null
Exit 3
}
Write-Output "AviUtl�̃C���X�g�[�����������܂����B"
Write-Output "�V���[�g�J�b�g���쐬����ɂ́A�f�X�N�g�b�v���E�N���b�N���A�V�K�쐬>�V���[�g�J�b�g���N���b�N���A���ڂ̏ꏊ��C:\AviUtl\aviutl.exe�ɂ��āA��ʂɏ]���đ��삵�܂��B"
Write-Output "�ǂꂩ�̃L�[�������ƏI�����܂�..."
Read-Host | Out-Null
Exit 0
} elseif ($install_choice -ceq "n") {
Write-Output "�L�����Z�����܂����B"
Write-Output "�ǂꂩ�̃L�[�������ƏI�����܂�..."
Read-Host | Out-Null
Exit 2
} else {
Write-Output "�����ȑI���ł��B"
Write-Output "�ǂꂩ�̃L�[�������ƏI�����܂�..."
Read-Host | Out-Null
Exit 3
}