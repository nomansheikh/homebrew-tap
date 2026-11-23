cask "kiln" do
  version "0.2.0"
  sha256 "e3b80da372a4ba2f39891f9f6f189b3840005991947196e87832b7d1f790af26"

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
