cd /d "%~dp0"
if "%~1" neq "" goto :%~1
cls
dism.exe /online /norestart /add-package /packagepath:Microsoft-Client-License-Platform-Upgrade-Subscription-Core-Package~31bf3856ad364e35~amd64~~10.0.18362.1.cab /packagepath:Microsoft-Client-License-Platform-Upgrade-Subscription-Core-Package~31bf3856ad364e35~amd64~pt-BR~10.0.18362.1.cab
dism.exe /online /norestart /add-package /packagepath:Microsoft-Windows-Branding-Core-Package~31bf3856ad364e35~amd64~~10.0.18362.1.cab
dism.exe /online /norestart /add-package /packagepath:Microsoft-Windows-Core-SPP-Components-Package~31bf3856ad364e35~amd64~~10.0.18362.1.cab
dism.exe /online /norestart /add-package /packagepath:Microsoft-Windows-EditionPack-Core-Package~31bf3856ad364e35~amd64~~10.0.18362.30.cab /packagepath:Microsoft-Windows-EditionPack-Core-Package~31bf3856ad364e35~amd64~pt-BR~10.0.18362.1.cab
dism.exe /online /norestart /add-package /packagepath:Microsoft-Windows-Editions-Core-Package~31bf3856ad364e35~amd64~~10.0.18362.30.cab /packagepath:Microsoft-Windows-Editions-Core-Package~31bf3856ad364e35~amd64~pt-BR~10.0.18362.1.cab
dism.exe /online /norestart /add-package /packagepath:Microsoft-Windows-EditionSpecific-Core-Package~31bf3856ad364e35~amd64~~10.0.18362.30.cab /packagepath:Microsoft-Windows-EditionSpecific-Core-Package~31bf3856ad364e35~amd64~pt-BR~10.0.18362.1.cab
dism.exe /online /norestart /add-package /packagepath:Microsoft-Windows-MSMQ-Client-Home-Premium-Package~31bf3856ad364e35~amd64~~10.0.18362.30.cab /packagepath:Microsoft-Windows-MSMQ-Client-Home-Premium-Package~31bf3856ad364e35~amd64~pt-BR~10.0.18362.1.cab
dism.exe /online /norestart /add-package /packagepath:Microsoft-Windows-Printing-LocalPrinting-Home-Package~31bf3856ad364e35~amd64~~10.0.18362.1.cab /packagepath:Microsoft-Windows-Printing-LocalPrinting-Home-Package~31bf3856ad364e35~amd64~pt-BR~10.0.18362.1.cab
dism.exe /online /norestart /add-package /packagepath:Microsoft-Windows-SecureStartup-Basic-Package~31bf3856ad364e35~amd64~~10.0.18362.1.cab /packagepath:Microsoft-Windows-SecureStartup-Basic-Package~31bf3856ad364e35~amd64~pt-BR~10.0.18362.1.cab
dism.exe /online /norestart /add-package /packagepath:Microsoft-Windows-SecureStartup-Basic-Subsystem-base-Package~31bf3856ad364e35~amd64~~10.0.18362.1.cab /packagepath:Microsoft-Windows-SecureStartup-Basic-Subsystem-base-Package~31bf3856ad364e35~amd64~pt-BR~10.0.18362.1.cab
dism.exe /online /norestart /add-package /packagepath:Microsoft-Windows-SecureStartup-Basic-Subsystem-onecore-Package~31bf3856ad364e35~amd64~~10.0.18362.1.cab /packagepath:Microsoft-Windows-SecureStartup-Basic-Subsystem-onecore-Package~31bf3856ad364e35~amd64~pt-BR~10.0.18362.1.cab
dism.exe /online /norestart /add-package /packagepath:Microsoft-Windows-SecureStartup-Basic-Subsystem-Package~31bf3856ad364e35~amd64~~10.0.18362.1.cab /packagepath:Microsoft-Windows-SecureStartup-Basic-Subsystem-Package~31bf3856ad364e35~amd64~pt-BR~10.0.18362.1.cab
dism.exe /online /norestart /add-package /packagepath:Microsoft-Windows-Security-SPP-Component-SKU-Core-Default-Package~31bf3856ad364e35~amd64~~10.0.18362.1.cab
dism.exe /online /norestart /add-package /packagepath:Microsoft-Windows-Security-SPP-Component-SKU-Core-License-Package~31bf3856ad364e35~amd64~~10.0.18362.1.cab
dism.exe /online /norestart /add-package /packagepath:Microsoft-Windows-Security-SPP-Component-SKU-Core-Package~31bf3856ad364e35~amd64~~10.0.18362.1.cab
dism.exe /online /norestart /add-package /packagepath:Microsoft-Windows-Security-SPP-Component-SKU-CoreSingleLanguage-License-Package~31bf3856ad364e35~amd64~~10.0.18362.1.cab
dism.exe /online /norestart /add-package /packagepath:Networking-MPSSVC-Rules-HomePremiumEdition-net-Package~31bf3856ad364e35~amd64~~10.0.18362.1.cab /packagepath:Networking-MPSSVC-Rules-HomePremiumEdition-net-Package~31bf3856ad364e35~amd64~pt-BR~10.0.18362.1.cab
dism.exe /online /norestart /add-package /packagepath:Networking-MPSSVC-Rules-HomePremiumEdition-onecore-Package~31bf3856ad364e35~amd64~~10.0.18362.1.cab /packagepath:Networking-MPSSVC-Rules-HomePremiumEdition-onecore-Package~31bf3856ad364e35~amd64~pt-BR~10.0.18362.1.cab
dism.exe /online /norestart /add-package /packagepath:Networking-MPSSVC-Rules-HomePremiumEdition-Package~31bf3856ad364e35~amd64~~10.0.18362.1.cab /packagepath:Networking-MPSSVC-Rules-HomePremiumEdition-Package~31bf3856ad364e35~amd64~pt-BR~10.0.18362.1.cab
dism.exe /online /norestart /add-package /packagepath:Server-Help-Package.ClientHomePremium~31bf3856ad364e35~amd64~~10.0.18362.1.cab /packagepath:Server-Help-Package.ClientHomePremium~31bf3856ad364e35~amd64~pt-BR~10.0.18362.1.cab
call :reiniciar migracao
goto :eof
:migracao
echo off
cls
echo Alterar versao do Windows
echo =============================================
echo 1 Home Single Language
echo 2 Home
echo =============================================
choice /C 12 /M "Para qual versao deseja migrar"
if errorlevel 2 goto 2
if errorlevel 1 goto 1
goto end
:2
cls
changepk.exe /productkey YTMG3-N6DKC-DKB77-7M9GH-8HVX7
shutdown /r /t 5 /f
goto end
:1
cls
changepk.exe /productkey BT79Q-G7N6G-PGBYW-4YWX6-6F4BT
shutdown /r /t 5 /f
:end
goto :eof
:reiniciar
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce /t REG_SZ /d "\"%~dpf0\" %~1" /v In-Place /f 
shutdown /r /t 5 /f