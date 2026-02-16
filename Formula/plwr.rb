class Plwr < Formula
  desc "Clean CLI for Playwright browser automation with CSS selectors"
  homepage "https://github.com/andreasjansson/plwr"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.8.0/plwr-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "ebedbb1190c5e917c43d4e877b0b69b4749b81a678e84e23dee938c9964beab0"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.8.0/plwr-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "c79a6acc855e0e2d3516d30826bd8a724497e40e5a59136a56edca02af82a352"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.8.0/plwr-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c4011c3a8d0eec66184b7b823a8d6415bf58bb7f5be7283216bd78964ca71d58"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.8.0/plwr-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "158c001d5ca1eee91ff53b65553f82be535ebdf5e4e02f397f24da97d074a86f"
    end
  end

  def install
    bin.install "plwr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plwr --version")
  end
end
