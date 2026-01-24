class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.16.0/cctr-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "871a16e905dc9c010136d76d6e4f6d3052ed67044023f942a48f9ee6024fde74"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.16.0/cctr-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "51a08b3ee7665a5b8ff8b4cebc866a2f9148d9da36ed96da532bc5e9ecd69787"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.16.0/cctr-v0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e568a19dc4649be316e327717a81bbd830a946311ea1c3bba1b492f7544c074"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.16.0/cctr-v0.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8c0ee2e84acf73c8bcd4d2ee437e1e4b43ed5998c72500a95450c517e216c1c3"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
