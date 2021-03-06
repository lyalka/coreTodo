FROM microsoft/dotnet:2.0-sdk
COPY ./src /app
WORKDIR /app
RUN ["dotnet", "restore"]
WORKDIR /app
RUN ["dotnet", "build"]
EXPOSE 5000/tcp
ENV ASPNETCORE_URLS http://*:5000
ENTRYPOINT ["dotnet", "run", "--project", "CoreTodo/CoreTodo.csproj", "--urls", "http://*:5000"]