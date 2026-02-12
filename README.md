# setup-dynapyt

Set up your GitHub Actions job for [DynaPyt](https://github.com/sola-st/DynaPyt).

## Usage

```yaml
steps:
- uses: actions/checkout@v4

- uses: JavidDitty/setup-dynapyt@v1

# Insert your other steps here

- name: Upload DynaPyt Artifacts
  uses: actions/upload-artifact@v4
  if: always()
  with:
    name: ${{ env.DYNAPYT_ARTIFACT_NAME }}
    path: ${{ env.DYNAPYT_OUTPUT }}
```
