# Docker bugwarrior image

This is python based bugwarrior docker image

## Build

```
docker build -t bugwarrior .
docker run -v $PWD/bugwarriorrc:/root/.config/bugwarrior/bugwarriorrc bugwarrior bugwarrior-pull
```

## Example bugwarrior config


```
[general]
targets = org_github
inline_links = False
annotation_links = True
legacy_matching=False
log.level = DEBUG

[hooks]

[org_github]
service = github
default_priority = H
add_tags = open_source
github.username = <org_username>
github.login = <your_username>
github.token = <token>
github.include_user_repos = False
github.include_repos = <comma_separated_repos_to_include>
```
