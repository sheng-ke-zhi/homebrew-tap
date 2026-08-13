class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.22"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.22/skz-aarch64-apple-darwin.tar.gz"
      sha256 "354fdf6515c7fb2a53052357d7075abc97cb40646af9c09eb3229fb324f631ee"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.22/skz-x86_64-apple-darwin.tar.gz"
      sha256 "114d2416673b79b614d3dd8f7d3265f1f9e0a5e67bde9a4c29e3f555aa2588e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.22/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "346cfd988f2aae2b3e05f36b8c57c71a97b88f11cd545acdb5c158ffd83a336c"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.22/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2fc3f23efffcafaf11160634ea07bdcd8c9190b4a09e031391608cef32feec2d"
    end
  end

  def install
    libexec.install "skz", "skills"
    bin.install_symlink libexec/"skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
