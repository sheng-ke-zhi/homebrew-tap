class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.11"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.11/skz-aarch64-apple-darwin.tar.gz"
      sha256 "0e4c941e5488de98ffd5dee8f5d164971d07bfb2f7c035538e36995e04c9d795"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.11/skz-x86_64-apple-darwin.tar.gz"
      sha256 "db559a1278bcc621ec36bd7523ea84e140b085487a33d804dcc4df64c88b1c08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.11/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dbac7ca4382af1dfa6c6d20d65f5e423191e179065e115d3068d4d2ed97aa3fb"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.11/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "03d0c1208edf36617be0f86a920be4a9bd95311d3bafc058a9b67d1b52488593"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
