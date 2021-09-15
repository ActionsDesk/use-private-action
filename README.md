# use-private-action

> TLDR; A composite action that will clone a private/internal action (from an organization) and use it. Provides a simple interface as close as possible to the native workflow syntax.

## Usage

```yaml
on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    
    steps:  
      - uses: actions/checkout@v2
      - uses: Link-/use-private-action@main
        with:
          uses: ORG/PRIVATE_ACTION_NAME@v1
          github_app_id: ${{secrets.GITHUB_APP_ID}}
          github_app_private_key: ${{secrets.GITHUB_APP_PRIVATE_KEY}}
```
