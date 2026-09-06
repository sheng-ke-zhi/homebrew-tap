class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.35"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.35/skz-aarch64-apple-darwin.tar.gz"
      sha256 "47b05fedd86987d2114f827555b3d2843e4ea1ff90a67a8c033e1232d9d5894d"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.35/skz-x86_64-apple-darwin.tar.gz"
      sha256 "888496367c2058b589397b5c6418e360f923d29130fa1c4ffe3810489a009b26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.35/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ef4c28ab82636d00328d60915896893ccb472ce47e5e323268e235f38bd9cf15"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.35/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "86c700f322b857e97dc822636ccacbad829d2c5afa55ff311faa200388dcb580"
    end
  end

  def install
    libexec.install "skz", "plugins"
    bin.install_symlink libexec/"skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
