# Homebrew tap

Casks for apps by [Noman Sheikh](https://github.com/nomansheikh).

## Kiln

[Kiln](https://github.com/nomansheikh/kiln) is a native macOS app that downloads image and speech models from Hugging Face and runs them on your own Mac. It needs an Apple Silicon Mac with macOS 14 or later.

```sh
brew install --cask nomansheikh/tap/kiln
```

To get a newer version later:

```sh
brew upgrade --cask kiln
```

To remove it:

```sh
brew uninstall --cask kiln
```

Adding `--zap` to that also removes what Kiln stored: downloaded models, generated images, clips, voices and chats.
