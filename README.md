# Homebrew Casks

A personal Homebrew tap repository containing casks for macOS applications. This tap is designed for personal use and contains casks for x86_64 architecture only.

## Available Casks

- `blackboard-sync` - Blackboard course content synchronization tool
- `geoport` - Location simulation app for iOS devices

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
