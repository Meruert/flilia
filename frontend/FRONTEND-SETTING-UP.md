# Setting up a projects for frontend
- [Question or Problem?](#question)
- [Available frontend apps](#apps)
- [Development Setup (Windows)](#setup)
- [Related documentation and guidance](#guidance)

## <a name="question"></a> Got a Question or Problem?
You can start discussion and ask any question related with development in [Developers team][developers-team] 

## <a name="apps"></a> List of available frontend apps
- [Flilia SPA: main][flilia-main-client-spa]
- [Flilia SPA: about][flilia-about-client-spa]
- [Flilia SPA: support][flilia-support-client-spa]

## <a name="setup"></a> Development Setup (Windows)

#### Prerequisites
- Install [GIT][git]
- Install [NodeJS][nodejs]

#### Setting up a project
1. Install the [Angular][angular] CLI globally:
    ```shell
    npm install -g @angular/cli
    ```
2. Create a folder for Flilia project:
    ```shell
    mkdir "C:\Users\[USER_NAME]\source\flilia\frontend"
    cd "C:\Users\[USER_NAME]\source\flilia\frontend"
    ```
3. Clone the desired repositories into the folder you just created `\flilia\frontend\...` (see list of available spa apps above):
    ```shell
    | NOTE: Make sure that you have all necessary rights to access and work with repositories

    git clone [PROJECT_NAME]
    ```
4. Install all dependencies:
    ```shell
    cd [PROJECT_NAME]
    npm install
    ```
5. Run the application:
    ```shell
    ng serve
    ```

#### Set up your development environment
- We recommend you install [Visual Studio Code][vscode]
    ```
    It is also recommended to install next extensions for VS Code:
    - Angular Language Service (id: angular.ng-template)
    - Visual Studio IntelliCode (id: visualstudioexptteam.vscodeintellicode)
    - SCSS Formatter (id: sibiraj-s.vscode-scss-formatter)
    - TSLint (id: ms-vscode.vscode-typescript-tslint-plugin)
    ```

#### Summary
You should be able to browse different sites of the application by using the below URLs:
```shell
SPA Main: "http://localhost:4202"
SPA About: "http://localhost:4200"
SPA Support: "http://localhost:4201"
```

## <a name="guidance"></a> Related documentation and guidance

This guides will help you get started with installing and setting up the languages and tools you need to develop on Windows or Windows Subsystem for Linux:

- [Get started with NodeJS][nodejsdocs]
    Install NodeJS and get your development environment setup on Windows or Windows Subsystem for Linux.
- [Get started with Angular][angular]
    Angular is an application design framework and development platform for creating efficient and sophisticated single-page apps.
- [Windows Terminal][terminal]
    Customize your terminal environment to work with multiple command line shells.
- [Visual Studio Code][vscodedocs]
    A lightweight source code editor with built-in support for JavaScript, TypeScript, Node.js, a rich ecosystem of extensions (C++, C#, Java, Python, PHP, Go) and runtimes (such as .NET and Unity).
- [GIT][gitdocs]
    Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.

#
[developers-team]: https://github.com/orgs/flilia/teams/developers-team/
[git]: https://git-scm.com/
[gitdocs]: https://git-scm.com/doc
[nodejs]: https://nodejs.org/
[nodejsdocs]: https://docs.microsoft.com/en-us/windows/nodejs/
[vscode]: https://code.visualstudio.com/
[vscodedocs]: https://code.visualstudio.com/docs/
[angular]: https://angular.io/docs/
[terminal]: https://docs.microsoft.com/en-us/windows/terminal/
[flilia-main-client-spa]: https://github.com/flilia/flilia-main-client-spa
[flilia-about-client-spa]: https://github.com/flilia/flilia-about-client-spa
[flilia-support-client-spa]: https://github.com/flilia/flilia-support-client-spa