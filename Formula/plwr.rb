class Plwr < Formula
  desc "Clean CLI for Playwright browser automation with CSS selectors"
  homepage "https://github.com/andreasjansson/plwr"
  version "0.17.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.17.2/plwr-v0.17.2-x86_64-apple-darwin.tar.gz"
      sha256 "54d2f60bbf7058c6750cd6940b7eef123a90d2db5c46d63c03e13c2eba805830"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.17.2/plwr-v0.17.2-aarch64-apple-darwin.tar.gz"
      sha256 "9cc1479debcd04d6a47f9d381f35f1b04efd0f5b4d22e877310f7ec4a79c6ce8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.17.2/plwr-v0.17.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26243c095188644190c421a33d87041edeacc195cda30d88dc96d8d87323c63a"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.17.2/plwr-v0.17.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6be925d99b865073069f6b9a7a4c3e57d24636448fcda582cd87b872c1a9c30e"
    end
  end

  def install
    bin.install "plwr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plwr --version")
  end
end
