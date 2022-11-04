# Use the SDK image to build and publish the website
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
RUN dotnet new -i Umbraco.Templates::11.0.0-rc3
RUN dotnet new umbraco -n UmbWeb
WORKDIR /src/UmbWeb

RUN dotnet restore "UmbWeb.csproj"

RUN dotnet publish "UmbWeb.csproj" -c Release -o /app

WORKDIR /app
ENTRYPOINT ["dotnet", "UmbWeb.dll"]