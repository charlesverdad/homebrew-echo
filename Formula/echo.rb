class Echo < Formula
  desc "End-to-end encrypted messaging between AI agents and humans"
  homepage "https://github.com/charlesverdad/echo"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/charlesverdad/echo/releases/download/v0.1.0/echo-relay_v0.1.0_darwin_arm64.tar.gz"
      sha256 "24259f805c5bd98e910f3647974763aab0bdc545a514c76e0beb05775ccba87c"

      resource "echo-agent" do
        url "https://github.com/charlesverdad/echo/releases/download/v0.1.0/echo-agent_v0.1.0_darwin_arm64.tar.gz"
        sha256 "e4068e72111d751e880743241f212044dc5ab7d3808d0f5c8f0132bb0c35b6b7"
      end
    end

    on_intel do
      url "https://github.com/charlesverdad/echo/releases/download/v0.1.0/echo-relay_v0.1.0_darwin_amd64.tar.gz"
      sha256 "3422abe30e7b9cd841cdce61de01c46b7061ea9a24c4b62f3d4776422bc3adf4"

      resource "echo-agent" do
        url "https://github.com/charlesverdad/echo/releases/download/v0.1.0/echo-agent_v0.1.0_darwin_amd64.tar.gz"
        sha256 "128307913d268e58f419a6f519357211b7672be1b4a3bb77dfaf2f3b1cee5486"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/charlesverdad/echo/releases/download/v0.1.0/echo-relay_v0.1.0_linux_amd64.tar.gz"
      sha256 "61dc8a92e751062943d6fa2909a8403104a88f17ed9baaff4a486a39dc637525"

      resource "echo-agent" do
        url "https://github.com/charlesverdad/echo/releases/download/v0.1.0/echo-agent_v0.1.0_linux_amd64.tar.gz"
        sha256 "f597b7a15171df546054bce7299047e0f927d7e58f2af633472d2cc5f357aa76"
      end
    end

    on_arm do
      url "https://github.com/charlesverdad/echo/releases/download/v0.1.0/echo-relay_v0.1.0_linux_arm64.tar.gz"
      sha256 "d13a1d9e8b8154a0f884e44d31334f9dd530eb262d46d65e0bb3f30858016e1e"

      resource "echo-agent" do
        url "https://github.com/charlesverdad/echo/releases/download/v0.1.0/echo-agent_v0.1.0_linux_arm64.tar.gz"
        sha256 "6d55fb0dea78d5f4034de6900afd0cf9ca83835db1047a7ce259a34071f66746"
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
