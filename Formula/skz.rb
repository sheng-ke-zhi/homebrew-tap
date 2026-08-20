class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.24"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.24/skz-aarch64-apple-darwin.tar.gz"
      sha256 "fb099bda2eb4c6f0d8f158b7ebf4e09196eb6b010e2ad30b5273f518eb38a30a"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.24/skz-x86_64-apple-darwin.tar.gz"
      sha256 "23fc39613bad252a53eee8d1c947b0c4419f0dd732ca554e4535662ee1b5ccf6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.24/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5c7cf02af3c4ee8f95f916b173ff798e26413f083b0fda974f369f06fe2d0da6"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.24/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "17b83fc0ffc8c055205548e0511c2863eb51f4ae51b962e35b6feefe43a97d27"
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
