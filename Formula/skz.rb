class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.25"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.25/skz-aarch64-apple-darwin.tar.gz"
      sha256 "6ca06cf5ed60ff376f902bf27d0981c570b0d4f2d5d9ced714d90a41ac32eff8"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.25/skz-x86_64-apple-darwin.tar.gz"
      sha256 "8de55e9e5fcf298181ef2b3e4467500c83cb024a59baca5323bb6213e46b5e76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.25/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fa42587b5756d2bdbb8aebaeee54520a19debea815062d1f4a69994f4f2f8e2d"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.25/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9116735137ea9dcfcf40dd835d43e37b6cae8b144e95d3ab62c58206c6bc0568"
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
