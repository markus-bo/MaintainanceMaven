[![Azure Static Web Apps CI/CD](https://github.com/markus-bo/MaintainanceMaven/actions/workflows/azure-static-web-apps-gray-forest-0febd7403.yml/badge.svg?branch=main)](https://github.com/markus-bo/MaintainanceMaven/actions/workflows/azure-static-web-apps-gray-forest-0febd7403.yml)

# Blazor Application

This project is based on the template [Blazor WebAssembly](https://docs.microsoft.com/aspnet/core/blazor/?view=aspnetcore-6.0#blazor-webassembly) client application, a .NET 7 C# [Azure Functions](https://docs.microsoft.com/azure/azure-functions/functions-overview), and a C# class library with shared code.

> Note: Azure Functions only supports .NET 7 in the isolated process execution model

# Getting Started

1. Open project with visual studio ("Dev Containers" must be installed or a remote VS code like codespace must be used). Within the devcontainer the following tools are installed after container build:
    - dotnet sdk 7.0
    - node.js (v16.20)
    - git (v latest)
    - azure cli (v latest)
    - azure static-web-apps-cli
    - azure functions-core-tools
    - terraform (v latest)
    - Postman
    - Github Actions

1. In the **Api** folder, copy `local.settings.example.json` to `local.settings.json`

## Local Run Workflow

Open VS Code terminal twice and run in the separate temrinal the following commands:
- Terminal 1 (workspaces/MaintainanceMaven):
    ```bash
    swa start
    ```
- Terminal 2 (workspaces/MaintainanceMaven/Api):
    ```bash
    func start
    ```
    After building you should be able to access the web app including function backend via http://localhost:4280

## Azure Resources

Every Resource should be annotated with the tag **'project':''MaintainanceMaven'** and based on the subscription **SubscriptionMaintainanceMaven**

The following resources are in use:
- maintainancemaven : Resource Group
- SubscriptionMaintainanceMaven : Subscription
- MaintainanceMavenStaticWebApp : Static Web App

