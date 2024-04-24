@echo OFF
if (Test-Path "./dist") {
	rojo build -o ./dist/RPM.rbxmx &>null
	copy -Force ./dist/RPM.rbxmx $ENV:LOCALAPPDATA\Roblox\Plugins\ &>null
} else {
	mkdir dist
	rojo build -o ./bin/RPM.rbxmx &>null
	copy -Force ./bin/RPM.rbxmx $ENV:LOCALAPPDATA\Roblox\Plugins\ &>null
}