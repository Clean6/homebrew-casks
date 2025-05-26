# Homebrew Casks

A personal Homebrew tap repository containing casks for macOS applications. This tap is designed for personal use and contains casks for x86_64 architecture only.

## Available Casks

| Cask | Description | Version | Architecture |
|------|-------------|---------|--------------|
| `blackboard-sync` | Blackboard course content synchronization tool | 0.18.0 | x86_64 |
| `geoport` | Location simulation app for iOS devices | 4.0.2 | x86_64 |

## Usage

First, add this tap to your Homebrew installation:

```bash
brew tap clean6/homebrew-clean6
```

Then you can install any of the casks:

```bash
# Install BlackboardSync
brew install --cask blackboard-sync

# Install GeoPort
brew install --cask geoport
```

## Contributing

To contribute a new cask:

1. Fork this repository
2. Create a new branch for your cask
3. Add your cask file to the `Casks` directory
4. Ensure it follows the [Homebrew Cask style guide](https://docs.brew.sh/Cask-Cookbook)
5. Submit a pull request

### Cask Requirements

- Must include a proper version number
- Must include a valid SHA256 checksum
- Must include a working download URL
- Must include a descriptive name and description
- Should include proper zap stanza for cleanup
- Should include appropriate artifact stanzas

### Testing Your Cask

Before submitting, test your cask locally:

```bash
brew audit --new-cask Casks/your-cask.rb
brew style Casks/your-cask.rb
brew install --cask Casks/your-cask.rb
```

## License

This project is licensed under the BSD 2-Clause License.

## Verification & Security

To verify the integrity of a downloaded cask, you can check its SHA256 checksum:

```bash
# After downloading but before installing
brew fetch --cask blackboard-sync  # or geoport
shasum -a 256 "$(find "$(brew --cache)" -name '*.dmg' -or -name '*.zip' | grep -i blackboard)"
```

Compare the output with the SHA256 in the cask file.

## Troubleshooting

### Common Issues

1. **Installation fails with "Cask 'x' is unavailable"**
   ```bash
   brew update
   brew tap --repair
   ```

2. **SHA256 mismatch**
   - The app version might have been updated
   - Create an issue or PR with the new SHA256

3. **App fails to launch on macOS**
   - Check System Settings > Privacy & Security
   - Most apps require x86_64 architecture (Intel or Rosetta 2)
   - Some apps require additional permissions

4. **Cleanup fails**
   ```bash
   # Force uninstall
   brew uninstall --cask --force <cask-name>
   # Remove all files
   brew cleanup
   ```

### Getting Help

- Open an issue in this repository
- Include the output of:
  ```bash
  brew doctor
  brew --version
  sw_vers
  ```
