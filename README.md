# Brakeman Action

A Github action to run [brakeman](https://brakemanscanner.org/).

## Usage

Create Github workflow definition yaml file in *.github/workflows* directory of your repository.

### Input parameters

This action can be configured by the following input parameters.
<!-- textlint-disable spellcheck-tech-word -->
| name | require | default | description |
|---|---|---|---|
| path | false | `'.'` | Relative path to scan. |
| options | false | `'--no-progress --no-exit-on-warn --no-exit-on-error --color -o /dev/stdout -o brakeman_results.html'` | Additional options. |
<!-- textlint-enable spellcheck-tech-word -->
see [brakeman options](https://brakemanscanner.org/docs/options/).


### For running the runner

The followoing yaml is a simplest workflow difinition of using brakeman-action.

```yaml
name: Brakeman
on:
  pull_request:
    types: [opened, synchronize]
jobs:
  Brakeman:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
        with:
          fetch-depth: 0
      # Ruby 3
      - uses: macchiang/brakeman-action@v3
```

## LICENSE
[MIT](LICENSE)
