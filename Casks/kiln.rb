cask "kiln" do
  version "0.1.0"
  sha256 "80c42dc07d59148049eea95eb0b0c2d2c2c60dd632c96de5d272a441dfd430dc"

  url "https://github.com/nomansheikh/kiln/releases/download/v#{version}/Kiln-#{version}.dmg"
  name "Kiln"
  desc "Run image and speech models from Hugging Face locally"
  homepage "https://github.com/nomansheikh/kiln"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Kiln.app"

  # Downloaded models, generated images, clips, voices and chats live in
  # Application Support, so `--zap` removes them as well.
  zap trash: [
    "~/Library/Application Support/Kiln",
    "~/Library/Caches/codes.noman.kiln",
    "~/Library/Caches/Kiln",
    "~/Library/HTTPStorages/codes.noman.kiln",
    "~/Library/Preferences/codes.noman.kiln.plist",
  ]
end
