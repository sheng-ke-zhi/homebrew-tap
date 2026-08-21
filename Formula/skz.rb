class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.26"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.26/skz-aarch64-apple-darwin.tar.gz"
      sha256 "e80146551fe033e0d2d0d0a04f76c7648dc2a5047789457e73591461b7a339ea"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.26/skz-x86_64-apple-darwin.tar.gz"
      sha256 "582e0b51b0e51d1a9af9efae42e88904283b6d3681f44bf6adb4aa6955857859"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.26/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a2861688cfa15a00cd8acb7a4893efe2bc123df65d2a45a0c142a2621aea4e4b"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.26/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a6dac1dc936ac0f8a00851e6912036da5d60c24afbe572ed41dbde5f81851b05"
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
