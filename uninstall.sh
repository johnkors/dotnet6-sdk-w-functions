sdk_version="6.0.100-rc.1.21458.32"
netcoreapp="6.0.0-rc.1.21451.13"
aspnetcoreapp="6.0.0-rc.1.21452.15"
fw_version="6.0.0-rc.1.21451.13"

echo "SDK"
ls -al /usr/local/share/dotnet/sdk/
echo "NetCore.App"
ls -al /usr/local/share/dotnet/shared/Microsoft.NETCore.App/
echo "AspNetCore.App"
ls -al /usr/local/share/dotnet/shared/Microsoft.AspNetCore.App/
echo "fxr"
ls -al /usr/local/share/dotnet/host/fxr/
echo "exe"
strings /usr/local/share/dotnet/dotnet | grep "@(#)"

echo "REMOVING FOLDERS"
sudo rm -rf /usr/local/share/dotnet/sdk/$sdk_version
sudo rm -rf /usr/local/share/dotnet/shared/Microsoft.NETCore.App/$netcoreapp
sudo rm -rf /usr/local/share/dotnet/shared/Microsoft.AspNetCore.All/$aspnetcoreapp
sudo rm -rf /usr/local/share/dotnet/shared/Microsoft.AspNetCore.App/$fw_version
sudo rm -rf /usr/local/share/dotnet/host/fxr/$fw_version


echo "SDK"
ls -al /usr/local/share/dotnet/sdk/
echo "NetCore.App"
ls -al /usr/local/share/dotnet/shared/Microsoft.NETCore.App/
echo "AspNetCore.App"
ls -al /usr/local/share/dotnet/shared/Microsoft.AspNetCore.App/
echo "fxr"
ls -al /usr/local/share/dotnet/host/fxr/

strings /usr/local/share/dotnet/dotnet | grep "@(#)"
