﻿; # [ zrfisaac ]

; # [ about ]
; # - author : Isaac Caires
; # . - email : zrfisaac@gmail.com
; # . - site : zrfisaac.github.io

; # [ nsis ]

; # - Biblioteca
!include "MUI2.nsh"
!include "x64.nsh"

; # - Geral
Name "Quick Order 1.0.0 x32"
OutFile "..\Output\QuickOrder_1.0.0_Win32.exe"
Unicode True
InstallDir "$LOCALAPPDATA\QuickOrder"
InstallDirRegKey HKCU "SOFTWARE\{C1B437F6-3B3E-4460-9F4F-4978A961D713}" ""
RequestExecutionLevel User

; # - Pictures
!define MUI_ICON "..\Resources\Installer.ico" 
!define MUI_UNICON "..\Resources\Uninstaller.ico" 
!define MUI_HEADERIMAGE
!define MUI_HEADERIMAGE_RIGHT
!define MUI_HEADERIMAGE_BITMAP "..\Resources\InstallerHeader.bmp"
!define MUI_WELCOMEFINISHPAGE_BITMAP "..\Resources\InstallerBanner.bmp"
!define MUI_HEADERIMAGE_UNBITMAP  "..\Resources\UninstallerHeader.bmp"
!define MUI_UNWELCOMEFINISHPAGE_BITMAP "..\Resources\UninstallerBanner.bmp"

; # - Shortcuts
!define MUI_FINISHPAGE_RUN
!define MUI_FINISHPAGE_RUN_TEXT "$(MUI_Shortcut)"
!define MUI_FINISHPAGE_RUN_FUNCTION "fnShortcut"
Function "fnShortcut"
	CreateShortCut "$DESKTOP\Quick Order.lnk" "$INSTDIR\QuickOrder.exe"
FunctionEnd

; # - Interface
!define MUI_ABORTWARNING

; # - Page - Installer
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_LICENSE "..\LICENSE"
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

; # - Page - Uninstaller
!insertmacro MUI_UNPAGE_WELCOME
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES
!insertmacro MUI_UNPAGE_FINISH

; # - Language
!insertmacro MUI_LANGUAGE "English"
Function .onInit
  !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

; # - Version
VIProductVersion "1.0.0.0"
VIAddVersionKey "ProductName" "Quick Order x32"
VIAddVersionKey "Comments" ""
VIAddVersionKey "CompanyName" "Isaac Caires / zrfisaac.github.io"
VIAddVersionKey "LegalTrademarks" "Isaac Caires / zrfisaac.github.io"
VIAddVersionKey "LegalCopyright" "Isaac Caires / zrfisaac.github.io"
VIAddVersionKey "FileDescription" "A lightweight MVP designed to showcase a streamlined client order management system."
VIAddVersionKey "FileVersion" "1.0.0.0"
VIAddVersionKey "ProductVersion" "1.0.0.0"

; # - Translation
LangString MUI_Shortcut ${LANG_ENGLISH} "Create shortcut on the desktop"

; # - Installer - Base
Section Base
	; # : - Required
	SectionIn RO

	; # : - Files
	SetOutPath "$INSTDIR"
	File "..\MSSQL\ALL.sql"
	File "..\DelphiTrial\QuickOrder.ico"
	File "..\DelphiTrial\Binaries\Win32\Release\QuickOrder.exe"
	File "C:\Program Files (x86)\Fast Reports\VCL\2025.1.1\Trial\LibRS29\VCL\Win32\frControlsLibrary29.bpl"
	File "C:\Program Files (x86)\Fast Reports\VCL\2025.1.1\Trial\LibRS29\VCL\Win32\frCoreLibrary29.bpl"
	File "C:\Program Files (x86)\Fast Reports\VCL\2025.1.1\Trial\LibRS29\VCL\Win32\frGraphicsLibrary29.bpl"
	File "C:\Program Files (x86)\Fast Reports\VCL\2025.1.1\Trial\LibRS29\VCL\Win32\frLocalizationLibrary29.bpl"
	File "C:\Program Files (x86)\Fast Reports\VCL\2025.1.1\Trial\LibRS29\VCL\Win32\frSmartMemo29.bpl"
	File "C:\Program Files (x86)\Fast Reports\VCL\2025.1.1\Trial\LibRS29\VCL\Win32\frx29.bpl"
	File "C:\Program Files (x86)\Fast Reports\VCL\2025.1.1\Trial\LibRS29\VCL\Win32\frxDB29.bpl"
	File "C:\Program Files (x86)\Fast Reports\VCL\2025.1.1\Trial\LibRS29\VCL\Win32\frxSM29.bpl"
	File "C:\Program Files (x86)\Fast Reports\VCL\2025.1.1\Trial\LibRS29\VCL\Win32\fs29.bpl"
	File "C:\Program Files (x86)\Fast Reports\VCL\2025.1.1\Trial\LibRS29\VCL\Win32\fsDB29.bpl"

	; # : - Uninstaller
	WriteUninstaller "$INSTDIR\Uninstall.exe"

	; # : - Shortcuts
	CreateShortcut "$SMPROGRAMS\Quick Order.lnk" "$INSTDIR\QuickOrder.exe" "" "$INSTDIR\QuickOrder.ico"

	; # : - Control Panel
	WriteRegStr HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{C1B437F6-3B3E-4460-9F4F-4978A961D713}" "DisplayName" "Quick Order 1.0.0.0 x32"
	WriteRegStr HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{C1B437F6-3B3E-4460-9F4F-4978A961D713}" "UninstallString" "$\"$INSTDIR\Uninstall.exe$\""
	WriteRegStr HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{C1B437F6-3B3E-4460-9F4F-4978A961D713}" "QuietUninstallString" "$\"$INSTDIR\Uninstall.exe$\" /S"
	WriteRegStr HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{C1B437F6-3B3E-4460-9F4F-4978A961D713}" "InstallLocation" "$\"$INSTDIR$\""
	WriteRegStr HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{C1B437F6-3B3E-4460-9F4F-4978A961D713}" "DisplayIcon" "$\"$INSTDIR\QuickOrder.ico$\""
	WriteRegStr HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{C1B437F6-3B3E-4460-9F4F-4978A961D713}" "Publisher" "Isaac Caires / zrfisaac.github.io"
	WriteRegStr HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{C1B437F6-3B3E-4460-9F4F-4978A961D713}" "URLInfoAbout" "https://zrfisaac.github.io"
	WriteRegStr HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{C1B437F6-3B3E-4460-9F4F-4978A961D713}" "HelpLink" "https://zrfisaac.github.io"
	WriteRegStr HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{C1B437F6-3B3E-4460-9F4F-4978A961D713}" "DisplayVersion" "1.0.0.0"
	WriteRegDWORD HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{C1B437F6-3B3E-4460-9F4F-4978A961D713}" "VersionMajor" 1
	WriteRegDWORD HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{C1B437F6-3B3E-4460-9F4F-4978A961D713}" "VersionMinor" 0
	WriteRegDWORD HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{C1B437F6-3B3E-4460-9F4F-4978A961D713}" "NoModify" 0
	WriteRegDWORD HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{C1B437F6-3B3E-4460-9F4F-4978A961D713}" "NoRepair" 0
	WriteRegDWORD HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{C1B437F6-3B3E-4460-9F4F-4978A961D713}" "EstimatedSize" 6471 ;KB
SectionEnd

; # - Uninstaller - Base
Section Un.Base
	; # : - Required
	SectionIn RO

	; # : - Files
	Delete "$INSTDIR\*.*"
	RMDir /r "$INSTDIR"

	; # : - Shortcuts
	Delete "$INSTDIR\Quick Order.lnk"
	Delete "$SMPROGRAMS\Quick Order.lnk"

	; # : - Registry
	DeleteRegKey HKCU "SOFTWARE\{C1B437F6-3B3E-4460-9F4F-4978A961D713}"
	DeleteRegKey HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{C1B437F6-3B3E-4460-9F4F-4978A961D713}"
SectionEnd
