class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.15"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.15/skz-aarch64-apple-darwin.tar.gz"
      sha256 "00c3f6def67f8d1e6413da13f1eebff6ad99f43b53e10ec81ba113d953383f3b"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.15/skz-x86_64-apple-darwin.tar.gz"
      sha256 "047ed2f685889bdc06b84d2271a7c13b03e170b0ecdc4eb9106b79a42aafc56a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.15/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6d4b7f304e63ebcc3694c8fe0ef34798bdc88d03536a909b270660072bddee5a"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.15/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cd877e1d0a007f2dac2fccb4a5114940ec178d59e7011d0b3a9118608a86d738"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
