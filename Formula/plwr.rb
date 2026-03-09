class Plwr < Formula
  desc "Clean CLI for Playwright browser automation with CSS selectors"
  homepage "https://github.com/andreasjansson/plwr"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.17.0/plwr-v0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "d6d4d915dd4aee27f7adf2e0f028af6bf30bffe697eae74295aca728472e58c8"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.17.0/plwr-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "a96509f2b6b1ff0ec1e2850cbacfdc6fd632b1dd365cacc49f93ee4747202438"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.17.0/plwr-v0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a118186c37db6f393a902441e907777744957534ec57e0890502fd507b5ceabf"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.17.0/plwr-v0.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "513d91f5f7ab8973f908ed0d63d0f9d4deb08273490de21b8d0154adb080e40f"
    end
  end

  def install
    bin.install "plwr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plwr --version")
  end
end
