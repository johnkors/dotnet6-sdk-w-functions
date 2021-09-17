# Repro of .NET 6 SDK failure of Azure Function builds.


1. Install .NET Core 3.1
2. Install .NET 5
3. Build the project => No build errors.
4. Install .NET 6 RC1
5. Build the project => Build error 👇
<details>
  <summary>Open build error</summary>

```
➜  SomeFunction git:(master) ✗ dotnet build
Microsoft (R) Build Engine version 16.11.0+0538acc04 for .NET
Copyright (C) Microsoft Corporation. All rights reserved.

  Determining projects to restore...
  Restored /Users/johnkors/kode/temp/dotnet6-sdk-w-functions/SomeFunction/SomeFunction.csproj (in 318 ms).
  SomeFunction -> /Users/johnkors/kode/temp/dotnet6-sdk-w-functions/SomeFunction/bin/Debug/net5.0/SomeFunction.dll
/Users/johnkors/.nuget/packages/microsoft.azure.webjobs.script.extensionsmetadatagenerator/1.2.2/build/Microsoft.Azure.WebJobs.Script.ExtensionsMetadataGenerator.targets(37,5): warning : Failed to initialize CoreCLR, HRESULT: 0x80004005 [/Users/johnkors/kode/temp/dotnet6-sdk-w-functions/SomeFunction/SomeFunction.csproj]
  Debug output from extension.json generator:

/Users/johnkors/.nuget/packages/microsoft.azure.webjobs.script.extensionsmetadatagenerator/1.2.2/build/Microsoft.Azure.WebJobs.Script.ExtensionsMetadataGenerator.targets(37,5): error : Metadata generation failed. Exit code: '137' Error: 'Failed to initialize CoreCLR, HRESULT: 0x80004005' [/Users/johnkors/kode/temp/dotnet6-sdk-w-functions/SomeFunction/SomeFunction.csproj]

Build FAILED.

/Users/johnkors/.nuget/packages/microsoft.azure.webjobs.script.extensionsmetadatagenerator/1.2.2/build/Microsoft.Azure.WebJobs.Script.ExtensionsMetadataGenerator.targets(37,5): warning : Failed to initialize CoreCLR, HRESULT: 0x80004005 [/Users/johnkors/kode/temp/dotnet6-sdk-w-functions/SomeFunction/SomeFunction.csproj]
/Users/johnkors/.nuget/packages/microsoft.azure.webjobs.script.extensionsmetadatagenerator/1.2.2/build/Microsoft.Azure.WebJobs.Script.ExtensionsMetadataGenerator.targets(37,5): error : Metadata generation failed. Exit code: '137' Error: 'Failed to initialize CoreCLR, HRESULT: 0x80004005' [/Users/johnkors/kode/temp/dotnet6-sdk-w-functions/SomeFunction/SomeFunction.csproj]
    1 Warning(s)
    1 Error(s)
```




</details>

Fix:
Re-install the same .NET 5 as in 2. (no uninstall of .NET 6) => Build works fine.


