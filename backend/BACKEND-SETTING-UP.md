# Setting up a projects for backend
- [Question or Problem?](#question)
- [Available backend apps](#apps)
- [Development Setup (Windows)](#setup)
- [Related documentation and guidance](#guidance)

## <a name="question"></a> Got a Question or Problem?
You can start discussion and ask any question related with development in [Developers team][developers-team] 

## <a name="apps"></a> List of available backend repositories
- [Flilia Services: profile][flilia-services-profile]
- [Flilia Services: identity][flilia-services-identity]
- [Flilia Services: notification][flilia-services-notification]
- [Flilia Services: shared][flilia-services-shared]
- [Flilia Services: network][flilia-services-network]
- [Flilia Services: post][flilia-services-post]
- [Flilia Services: storage][flilia-services-storage]
- [Flilia Services: chat][flilia-services-chat]
- [Flilia Services: workflow][flilia-services-workflow]
- [Flilia Services: company][flilia-services-company]
- [Flilia Services: business][flilia-services-business]
- [Flilia Services: open-api][flilia-services-open-api]
- [Flilia Services: api][flilia-services-api]

## <a name="setup"></a> Development Setup (Windows)

#### Prerequisites
- Install [GIT][git]
- Install [ .NET Core 3.1][dotnet31]
- Install [Docker Desktop][dockerwindows]

#### Setting up a project
1. Install the [TYE][tye] globally:
    ```shell
    dotnet tool install -g Microsoft.Tye --version "0.6.0-alpha.21070.5"
    ```
2. Create a folder for Flilia project:
    ```shell
    mkdir "C:\Users\[USER_NAME]\source\flilia\backend"
    cd "C:\Users\[USER_NAME]\source\flilia\backend"
    ```
3. Download the files below into the folder you just created `\flilia\backend\...`:
    - <a download="docker-compose.yaml" href="docker-compose.yaml">docker-compose.yaml</a>
    - <a download="pull-all-changes.ps1" href="pull-all-changes.ps1">pull-all-changes.ps1</a>
    - <a download="tye.yaml" href="tye.yaml">tye.yaml</a>
4. Clone the desired repositories into the folder you just created `\flilia\backend\...` (see list of available backend apps above):
    ```shell
    | NOTE: Make sure that you have all necessary rights to access and work with repositories

    git clone [PROJECT_NAME]
    ```
5. Install all dependencies. This command will download all infrastructure services ([Postgres][postgres], [PgAdmin][pgadmin], [Seq][seq], [Elasticsearch][elasticsearch] and [Redis][redis] images) and setup it via docker:
    ```shell
    docker-compose up -d
    ```

#### Set up your development environment
For the explore the code and debug the application we recommend you install one of the IDEs below:
- [Visual Studio][vs]
    ```
    | Note: you have to install at least VS 2019 (16.8 or later).

    Upon running the installer, select the following workloads depending on the apps you intend to test or work with:
    - .NET cross-platform development
    - Azure development (Optional) - It is optional but recommended in case you want to deploy to Docker hosts in Azure or use any other infrastructure in Azure.
    ```
- [Visual Studio Code][vscode]
    ```
    It is also recommended to install next extensions for VS Code:
    - C# (id: ms-dotnettools.csharp)
    - Docker (id: ms-azuretools.vscode-docker)
    ```

#### Summary
- You should be able to browse different API services by using the below URLs:
    ```shell
    Service Account: "http://localhost:5000"
    Service User: "http://localhost:5017"
    Service Profile: "http://localhost:5010"
    Service PostService: "http://localhost:5011"
    Service Shared: "http://localhost:5015"
    Service Storage: "http://localhost:5013"
    Service Network: "http://localhost:5018"
    Service Notification: "http://localhost:5025"
    ```
- You can pull latest changes for all cloned repositories via following command:
    ```shell
    pull-all-changes.ps1
    ```
- You can run all backend applications together with `tye` command line:
    ```shell
    tye run
    ```
    After success running, tye will do two things: start the backend applications and run a dashboard. Navigate to http://localhost:8000 to see the dashboard running.
    \
    The dashboard should show the backend applications running.
    - The `Logs` column has a link to view the streaming logs for the service.
    - the `Bindings` column has links to the listening URLs of the service.

    \
    Navigate to the backend service using one of the urls on the dashboard in the Bindings column. It should be in the form of `http://localhost:[port]` or `https://localhost:[port]`.
    ######
- Once all dependencies is installed, you should be able to browse different infrastructure services by using the below URLs:
    ```shell
    PGADMIN: "http://localhost:5050"
        | NOTE: use following credentials to get access:
            PGADMIN_DEFAULT_EMAIL: "pgadmin4@pgadmin.org"
            PGADMIN_DEFAULT_PASSWORD: "Qwerty!23"

    Postgres: "http://localhost:5432"
        | NOTE: use following credentials to get access:
            POSTGRES_USER: "postgres"
            POSTGRES_PASSWORD: "Qwerty!23"

    Seq: "http://localhost:5341"
    Elasticsearch: "http://localhost:9200"
    Redis: "http://localhost:6379"
    ```

## <a name="guidance"></a> Related documentation and guidance

You can find the related reference Guide/eBook focusing on architecting and developing containerized and microservice based .NET Applications (download link available below) which explains in detail how to develop this kind of architectural style (microservices, Docker containers, Domain-Driven Design for certain microservices) plus other simpler architectural styles, like monolithic apps that can also live as Docker containers.

There are also additional eBooks focusing on Containers/Docker lifecycle (DevOps, CI/CD, etc.) with Microsoft Tools, already published. You can download them and start reviewing these Guides/eBooks here:

- [Architecting & Developing][microservicesebook]
- [Containers Lifecycle & CI/CD][dockerlifecycleebook]

This guides will help you get started with installing and setting up the languages and tools you need to develop on Windows or Windows Subsystem for Linux:

- [Get started with C#][csharp].
    Get started building apps using C# and .NET Core.
- [Get started with Docker Desktop for Windows][dockerdocs]
    Create remote development containers with support from Visual Studio, VS Code, .NET, Windows Subsystem for Linux, or a variety of Azure services.
- [Visual Studio][vsdocs]
    An integrated development environment that you can use to edit, debug, build code, and publish apps, including compilers, intellisense code completion, and many more features.
- [Visual Studio Code][vscodedocs]
    A lightweight source code editor with built-in support for JavaScript, TypeScript, Node.js, a rich ecosystem of extensions (C++, C#, Java, Python, PHP, Go) and runtimes (such as .NET and Unity).
- [Azure][azuredocs]
A complete cloud platform to host your existing apps and streamline new development. Azure services integrate everything you need to develop, test, deploy, and manage your apps.
- [.NET][netdocs]
    An open source development platform with tools and libraries for building any type of app, including web, mobile, desktop, gaming, IoT, cloud, and microservices.
- [Windows Terminal][terminal]
    Customize your terminal environment to work with multiple command line shells.
- [GIT][gitdocs]
    Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.
- [TYE][tye]
    Tye is a tool that makes developing, testing, and deploying microservices and distributed applications easier.
- [Postgres][postgres]
    PostgreSQL, also known as Postgres, is a free and open-source relational database management system emphasizing extensibility and SQL compliance.
- [PgAdmin][pgadmin]
    PostgreSQL Tools for Windows, Mac, Linux and the Web.
- [Seq][seq]
    Application logs are the most useful data available for detecting and solving a wide range of production issues and outages.
- [Elasticsearch][elastic]
    Elasticsearch is a search engine based on the Lucene library.
- [Redis][redis]
    Redis is an open source (BSD licensed), in-memory data structure store, used as a database, cache, and message broker.
- [Popular tutorials, courses, and code samples][popular]

#
[developers-team]: https://github.com/orgs/flilia/teams/developers-team
[flilia-services-profile]: https://github.com/flilia/flilia.services.profile
[flilia-services-identity]: https://github.com/flilia/flilia.services.identity
[flilia-services-notification]: https://github.com/flilia/flilia.services.notification
[flilia-services-shared]: https://github.com/flilia/flilia.services.shared
[flilia-services-network]: https://github.com/flilia/flilia.services.network
[flilia-services-post]: https://github.com/flilia/flilia.services.post
[flilia-services-storage]: https://github.com/flilia/flilia.services.storage
[flilia-services-chat]: https://github.com/flilia/flilia.services.chat
[flilia-services-workflow]: https://github.com/flilia/flilia.services.workflow
[flilia-services-company]: https://github.com/flilia/flilia.services.company
[flilia-services-business]: https://github.com/flilia/flilia.services.business
[flilia-services-open-api]: https://github.com/flilia/flilia.services.open-api
[flilia-services-api]: https://github.com/flilia/flilia.services.api
[dockerwindows]: https://docs.docker.com/docker-for-windows/install/
[dotnet31]: https://dotnet.microsoft.com/download/dotnet/3.1
[dotnetwindows]: https://dotnet.microsoft.com/learn/dotnet/hello-world-tutorial/install
[vs]: https://visualstudio.microsoft.com/
[vscode]: https://code.visualstudio.com/
[vscodedocs]: https://code.visualstudio.com/docs/
[vsdocs]: https://docs.microsoft.com/en-us/visualstudio/windows/?view=vs-2019
[git]: https://git-scm.com/
[gitdocs]: https://git-scm.com/doc
[terminal]: https://docs.microsoft.com/en-us/windows/terminal/
[popular]: https://docs.microsoft.com/en-us/windows/dev-environment/tutorials
[netdocs]: https://docs.microsoft.com/en-us/dotnet/standard/get-started
[azuredocs]: https://docs.microsoft.com/en-us/azure/guides/developer/azure-developer-guide
[dockerdocs]: https://docs.microsoft.com/en-us/windows/dev-environment/docker/overview
[csharp]: https://docs.microsoft.com/en-us/dotnet/csharp/
[microservicesebook]: https://aka.ms/microservicesebook
[dockerlifecycleebook]: https://aka.ms/dockerlifecycleebook
[tye]: https://github.com/dotnet/tye/blob/master/docs/getting_started.md
[postgres]: https://www.postgresql.org/about/
[pgadmin]: https://www.pgadmin.org/docs/pgadmin4/latest/index.html
[seq]: https://datalust.co/seq
[elastic]: https://www.elastic.co/guide/index.html
[redis]: https://redis.io/documentation