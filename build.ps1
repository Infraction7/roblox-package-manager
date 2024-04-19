if (Test-Path "./bin") {
	rojo build -o ./bin/rpm.rbxm
	copy -Force ./bin/rpm.rbxm $ENV:LOCALAPPDATA\Roblox\Plugins\
} else {
	mkdir bin
	rojo build -o ./bin/rpm.rbxm
	copy -Force ./bin/rpm.rbxm $ENV:LOCALAPPDATA\Roblox\Plugins\
}