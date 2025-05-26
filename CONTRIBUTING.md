# Contributing to this Homebrew Tap

Thank you for your interest in contributing to this Homebrew tap! This guide will help you get started.

## Adding a New Cask

1. Fork this repository
2. Create a new branch for your cask (`git checkout -b add-my-app`)
3. Create your cask file in the `Casks` directory
4. Test your cask locally (see below)
5. Submit a Pull Request

## Cask File Format

Here's a template for your cask file:

```ruby
cask "your-app" do
  version "1.2.3"
  sha256 "abc123..." # Must be the real SHA256 of your .dmg/.zip file

  url "https://example.com/app-#{version}.dmg"
  name "Your App"
  desc "A short description of what your app does"
  homepage "https://example.com"

  app "Your App.app"

  zap trash: [
    "~/Library/Application Support/Your App",
    "~/Library/Preferences/com.example.yourapp.plist"
  ]
end
```

## Testing Your Cask

Before submitting, run these commands:

```bash
brew audit --new-cask Casks/your-app.rb
brew style Casks/your-app.rb
brew install --cask ./Casks/your-app.rb
```

## Common Issues

1. **SHA256 Mismatch**: Always download the file and generate the SHA256 with:
   ```bash
   shasum -a 256 downloaded-file.dmg
   ```

2. **Version Numbers**: Use the exact version from the downloaded file

3. **URLs**: Ensure they are stable and version-specific

## Need Help?

- Check the [Homebrew Cask Documentation](https://docs.brew.sh/Adding-Software-to-Homebrew#cask-for-mac-apps)
- Open an issue in this repository
