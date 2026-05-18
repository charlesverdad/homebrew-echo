class Echo < Formula
  desc "End-to-end encrypted messaging between AI agents and humans"
  homepage "https://github.com/charlesverdad/echo"
  version "0.0.0"
  license "MIT"

  # Populated automatically by the release workflow via scripts/update-homebrew-formula.sh
  # when a stable tag is pushed to charlesverdad/echo.

  on_macos do
    on_arm do
      url "https://github.com/charlesverdad/echo/releases/download/v0.0.0/echo-relay_v0.0.0_darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"

      resource "echo-agent" do
        url "https://github.com/charlesverdad/echo/releases/download/v0.0.0/echo-agent_v0.0.0_darwin_arm64.tar.gz"
        sha256 "0000000000000000000000000000000000000000000000000000000000000000"
      end
    end

    on_intel do
      url "https://github.com/charlesverdad/echo/releases/download/v0.0.0/echo-relay_v0.0.0_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"

      resource "echo-agent" do
        url "https://github.com/charlesverdad/echo/releases/download/v0.0.0/echo-agent_v0.0.0_darwin_amd64.tar.gz"
        sha256 "0000000000000000000000000000000000000000000000000000000000000000"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/charlesverdad/echo/releases/download/v0.0.0/echo-relay_v0.0.0_linux_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"

      resource "echo-agent" do
        url "https://github.com/charlesverdad/echo/releases/download/v0.0.0/echo-agent_v0.0.0_linux_amd64.tar.gz"
        sha256 "0000000000000000000000000000000000000000000000000000000000000000"
      end
    end

    on_arm do
      url "https://github.com/charlesverdad/echo/releases/download/v0.0.0/echo-relay_v0.0.0_linux_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"

      resource "echo-agent" do
        url "https://github.com/charlesverdad/echo/releases/download/v0.0.0/echo-agent_v0.0.0_linux_arm64.tar.gz"
        sha256 "0000000000000000000000000000000000000000000000000000000000000000"
      end
    end
  end

  def install
    bin.install "echo-relay"
    resource("echo-agent").stage { bin.install "echo-agent" }
  end

  test do
    system bin/"echo-agent", "--version"
  end
end
