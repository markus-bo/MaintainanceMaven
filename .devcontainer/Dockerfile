ARG VARIANT=7.0-jammy
FROM mcr.microsoft.com/dotnet/sdk:${VARIANT}
ENV PATH $PATH:/home/vscode/.dotnet:/home/vscode/.dotnet/tools
RUN apt-get update \
    && apt-get install -y libsecret-1-0