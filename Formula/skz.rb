class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.28"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.28/skz-aarch64-apple-darwin.tar.gz"
      sha256 "0781353ec88f3c1c1a09f2b5d7bea69b84977b71cd2c52e45f2e1b7e9768e2d1"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.28/skz-x86_64-apple-darwin.tar.gz"
      sha256 "b675bc89061633fbfff6e0b96ac87532ec02a66e9f7218b078aebff5f226c022"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.28/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e2c83a5770774e87dee9c1406333926f7151c4b51ed44e970a38472e09b50df3"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.28/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a6628fde2ae87cb37f0bf5712e75317a5a899c2b11fde2fac5b0cec5accd56cd"
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
