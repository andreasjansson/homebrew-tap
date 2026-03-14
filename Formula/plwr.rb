class Plwr < Formula
  desc "Clean CLI for Playwright browser automation with CSS selectors"
  homepage "https://github.com/andreasjansson/plwr"
  version "0.20.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.20.1/plwr-v0.20.1-x86_64-apple-darwin.tar.gz"
      sha256 "6d35522ec358c8d13c70e53cc742eb1c9b9c229cc48f13288a6b963ba10d3d16"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.20.1/plwr-v0.20.1-aarch64-apple-darwin.tar.gz"
      sha256 "c5b269a388a6d547eb3785b2213326fe9ddab328aa2cbd89dc956ef0cdfeb56d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.20.1/plwr-v0.20.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8edba7e9a5d383983b2fc3a1702c7e903e0b80d48cab5a673dcf688ccc8028a5"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.20.1/plwr-v0.20.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fd061ab73d6642bc3a8d9ddcf70932598fcce095a48872f4b33b17200430b30b"
    end
  end

  def install
    bin.install "plwr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plwr --version")
  end
end
