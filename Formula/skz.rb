class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.45"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.45/skz-aarch64-apple-darwin.tar.gz"
      sha256 "6b31d68d0bbb4d5c460df765de163b0f24a453b836e5b14d925e2be0a5b8b3ea"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.45/skz-x86_64-apple-darwin.tar.gz"
      sha256 "316139d203006aa93afd1af3f9d488e538852bee15119a20bf3a6fb9f840831a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.45/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5a01fa580eb1955fa2c723e90f2458d6d516e25b53aff53b820d564e883b06fc"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.45/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "762c0a9d360255ec665208190053d598053e49b90a030a8d37027983cce23778"
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
