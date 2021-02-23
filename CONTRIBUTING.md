# Contributing to Flilia
We would love you to contribute to Flilia and help make it even better than it is today! As a contributor, here are guidelines we would like you to follow:

- [Question or Problem?](#question)
- [Submission Guidelines](#submit)
- [Commit Message Guidelines](#commit)

## <a name="question"></a> Got a Question or Problem?
You can start discussion and ask any question related with development in [Developers team][developers-team] 

## <a name="submit"></a> Submission Guidelines

#### Submitting a Pull Request (PR)
1. Make your changes in a new git branch:
     ```shell
     git checkout -b my-fix-branch master
     ```
2. Commit your changes using a descriptive commit message that follows our [commit message conventions](#commit): 
     ```shell
     git commit -m "Fix: Remove dublicates in css (AB#526)"
     ```
3. Push your branch to GitHub:
     ```shell
     git push origin my-fix-branch
     ```

#### After your pull request is merged
After your pull request is merged, you can safely delete your branch and pull the changes from the main (upstream) repository:

1. Delete the remote branch on GitHub either through the GitHub web UI or your local shell as follows:
     ```shell
     git push origin --delete my-fix-branch
     ```
2. Check out the master branch:
     ```shell
     git checkout master
     ```
3. Delete the local branch:
     ```shell
     git branch -D my-fix-branch
     ```

## <a name="commit"></a> Commit message format
We have very precise rules over how our Git commit messages must be formatted. This format leads to easier to read commit history.

Each commit message consists of header and body.
```shell
<header>
<BLANK LINE>
<body>
```

The `header` is mandatory and must conform to the [Commit Message Header format](#commitMessageHeaderFormat).

The `body` is mandatory for all commits except for those of type "docs". When the body is present it must be at least 20 characters long and must conform to the [Commit Message Body format](#commitMessageBodyFormat).

Any line of the commit message cannot be longer than 100 characters.

#### <a name="commitMessageHeaderFormat"></a> Commit Message Header
```html
Example: <Fix: Remove dublicates in css (AB#526)>

<Type>: <Summary> (<Scope>)
   │        │         |
   │        |         └─⫸ Scope is requiered if changes is related with ADO tasks: (AB#526)
   |        |
   │        └─⫸ Summary in present tense. Capitalized. No dot at the end.
   │
   └─⫸ Commit Type: Build|CI|Docs|Feat|Fix|Perf|Refactor|Test
```

The `<Type>` and `<Summary>` fields are mandatory, `(<Scope>)` field is optional.

`<Type>` - must be one of the following:
- Build: Changes that affect the build system or external dependencies (example scopes: gulp, broccoli, npm)
- CI: Changes to our CI configuration files and scripts (example scopes: Circle, BrowserStack, SauceLabs)
- Docs: Documentation only changes
- Feat: A new feature
- Fix: A bug fix
- Perf: A code change that improves performance
- Refactor: A code change that neither fixes a bug nor adds a feature
- Test: Adding missing tests or correcting existing tests

`<Summary>` - use the summary field to provide a succinct description of the change:
- use the imperative, present tense: "change" not "changed" nor "changes"
- Capitalize the first letter
- no dot (.) at the end

`(<Scope>)` - if the changes related with tasks from ADO, `<Scope>` field is requiered:
- add the number of related task from ADO: (AB#526)
- optionally add related pull requests numbers if exist: (#242)
- separate many relations with commas: (AB#526, #242)

#### <a name="commitMessageBodyFormat"></a> Commit message body
Just as in the summary, use the imperative, present tense: "fix" not "fixed" nor "fixes".

Explain the motivation for the change in the commit message body. This commit message should explain why you are making the change. You can include a comparison of the previous behavior with the new behavior in order to illustrate the impact of the change.

#### Revert commits
If the commit reverts a previous commit, it should begin with `Revert:` , followed by the header of the reverted commit.

The content of the commit message body should contain:

- information about the SHA of the commit being reverted in the following format: This reverts commit `<SHA>`,
- a clear description of the reason for reverting the commit message.

#
[developers-team]: https://github.com/orgs/flilia/teams/developers-team