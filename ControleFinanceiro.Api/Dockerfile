#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY ["ControleFinanceiro.Api/ControleFinanceiro.Api.csproj", "ControleFinanceiro.Api/"]
COPY ["Core/Core.csproj", "Core/"]
COPY ["Infrastructure/Infrastructure.csproj", "Infrastructure/"]
RUN dotnet restore "ControleFinanceiro.Api/ControleFinanceiro.Api.csproj"
COPY . .
WORKDIR "/src/ControleFinanceiro.Api"
RUN dotnet build "ControleFinanceiro.Api.csproj" -c Release -o /app/build

#ENV ASPNETCORE_ENVIRONMENT= "Development"
#ENV ALURA_CONNECTIONSTRING= "Server=sqlserver;Database=ControleFinanceiro;User Id=sa;Password=Q1w2e3r4@"

FROM build AS publish
RUN dotnet publish "ControleFinanceiro.Api.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "ControleFinanceiro.Api.dll"]