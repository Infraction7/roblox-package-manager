if (Test-Path "./dist") {
	rojo build -o ./dist/RPM.rbxmx
	copy -Force ./dist/RPM.rbxmx $ENV:LOCALAPPDATA\Roblox\Plugins\
} else {
	mkdir dist
	rojo build -o ./bin/RPM.rbxmx
	copy -Force ./bin/RPM.rbxmx $ENV:LOCALAPPDATA\Roblox\Plugins\
}