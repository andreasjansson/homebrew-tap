class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.24.0/cctr-v0.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "dce9ce57bc60b057f1013ff0f7a80953e3b4254997a0a6713bda8ec0016bb6e8"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.24.0/cctr-v0.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "b351099724344b051971575d49c4d1e921394782fa01e6d0abab1a5f50cfb57a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.24.0/cctr-v0.24.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4883e0efd60b22b96d7083f2eee296009ac3163d024981bdc7916d78ff1a2820"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.24.0/cctr-v0.24.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ae78dabbe94c842a78abb30dc99b491743591fd1fe8c8581f45b5e431f267d9d"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
