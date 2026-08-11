class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.17"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.17/skz-aarch64-apple-darwin.tar.gz"
      sha256 "574e268726987b079242dc49334c713c6e30c2be131783af15c247c71b9a05c6"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.17/skz-x86_64-apple-darwin.tar.gz"
      sha256 "d2dbfd09a80302744eae8de1f6aff620c7b0ae8cc616c07df0cdcc3c18e0a846"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.17/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8dfcb11a62d1a0499dc616c79ee47516118455399499a98c58cacb2b37185f66"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.17/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4f70b642f2b20d78f365785e9b1adf3b18fb2c64d3dc78104dd0e3a759e30ec4"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
