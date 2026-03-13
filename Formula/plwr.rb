class Plwr < Formula
  desc "Clean CLI for Playwright browser automation with CSS selectors"
  homepage "https://github.com/andreasjansson/plwr"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.19.0/plwr-v0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "58b24dc44e308ede2c1f4c3c9c03f2dcc34373a42df4ada8f9ed8fea32a733d7"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.19.0/plwr-v0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "f3c6ee1733f05bc71a836f33184cdfa10e50c22e7e96478694eee31e235f29da"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.19.0/plwr-v0.19.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dad93b22824120dd98d95c89309eb6ad6f46f528f5c507692f214754a6c89ea4"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.19.0/plwr-v0.19.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "47ddd206acf3ebb63bb1d29b8791358be3ca84afa1754a81b50633dd84be4f0d"
    end
  end

  def install
    bin.install "plwr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plwr --version")
  end
end
