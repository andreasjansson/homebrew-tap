class Plwr < Formula
  desc "Clean CLI for Playwright browser automation with CSS selectors"
  homepage "https://github.com/andreasjansson/plwr"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.11.0/plwr-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "d9b0df5c5e6c643f36669634868ef718ee17765f7a6380b63f7249ae1f4cad78"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.11.0/plwr-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "cf44d31d6558a5b0217a15a5b7905a398d0cbbb51ac71f4d1da324a102d8fc11"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.11.0/plwr-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eea92b5121e40a58ed890d76af5f4a40f9a025111eb646a213364f198b67aaaf"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.11.0/plwr-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "752b5fff42afac867e26adc4c672e2a6687c666075d11564e73b071288a94beb"
    end
  end

  def install
    bin.install "plwr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plwr --version")
  end
end
