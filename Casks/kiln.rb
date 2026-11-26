cask "kiln" do
  version "0.3.0"
  sha256 "25bc4e2dfa5a98e49bfd1d9d1cc3aafca7df360c26f8eca6e39603eec599425e"

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
