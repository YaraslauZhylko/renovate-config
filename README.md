# renovate-config

Shareable [Renovate](https://www.mend.io/renovate/) preset for Vandruj repositories.

## Setup in target repositories

Enable Renovate for the target repository and extend this preset in `renovate.json` / `renovate.json5`:

```json
{
  "$schema": "https://docs.renovatebot.com/renovate-schema.json",
  "extends": ["local>YaraslauZhylko/renovate-config"]
}
```

## Local development

Initialize local git hooks:

```shell
make init
```

Run formatting:

```shell
make lint
```

Run checks without changing files:

```shell
make lint-check
```

Validate Renovate + GitHub Actions config:

```shell
make validate
```

## References

- [Renovate Docs](https://docs.renovatebot.com/)
- [Configuration Options | Renovate Docs](https://docs.renovatebot.com/configuration-options/)
- [Default Presets | Renovate Docs](https://docs.renovatebot.com/presets-default/)
- [Shareable Config Presets | Renovate Docs](https://docs.renovatebot.com/config-presets/)
