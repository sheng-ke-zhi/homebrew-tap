class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.27"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.27/skz-aarch64-apple-darwin.tar.gz"
      sha256 "25c530296dec189235af676a2096b851e774263ac04c8aa3e62d860a52ffa546"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.27/skz-x86_64-apple-darwin.tar.gz"
      sha256 "8c5c830b991bcde62c8b086efd2279938a51fb562f8e4887bc9c2dc0209c0520"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.27/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3596033bc5b69c8a60a196ece9b5ea237d1ee6dac34892813830b0a0b532b74e"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.27/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "66053d9a38ab38c87d2063d17b17586e5c6c42051fcc36080aad4f7d9ae626f1"
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
