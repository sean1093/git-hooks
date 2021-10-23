# git-hooks

A sample project for git hooks

## How to use it

1. Install husky

```sh
yarn add husky
```


2. Copy git-hook-prepush.sh into your repo

3. Modify git-hook-prepush.sh script depends on your need

4. Add command in package.json

```json
"husky": {
    "hooks": {
        "pre-push": "sh scripts/git-hook-prepush.sh"
    }
}
```

## Reference

For more detail, please see the article: https://medium.com/p/b4a0b11d3215
