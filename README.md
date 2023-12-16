# renovate-config

[Shareable config](https://docs.renovatebot.com/config-presets/) for [Renovate](https://www.mend.io/renovate/).

## Setup

[Enable Renovate in your repo](https://github.com/apps/renovate/) and just use `extends` in the `renovate.json` or `renovate.json5` file.

```js
{
  "$schema": "https://docs.renovatebot.com/renovate-schema.json",
  "extends": ["local>YaraslauZhylko/renovate-config"]
}
```

## Development

Lint the files:

```shell
make lint
```

Validate the configs:

```shell
make validate-renovate
```

```shell
make validate-github-actions
```

## References

- [Renovate Docs](https://docs.renovatebot.com)
- [Configuration Options \| Renovate Docs](https://docs.renovatebot.com/configuration-options/)
- [Default Presets \| Renovate Docs](https://docs.renovatebot.com/presets-default/)
- [Shareable Config Presets \| Renovate Docs](https://docs.renovatebot.com/config-presets/)
