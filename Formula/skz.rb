class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.31"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.31/skz-aarch64-apple-darwin.tar.gz"
      sha256 "c815c970b3116cc1b725fb5db1e5c038376f706b2ee2efc78767fc6c56ec9c0a"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.31/skz-x86_64-apple-darwin.tar.gz"
      sha256 "28cad64805a60cc7f82f18e39f6ced22fb6462e733759ecdd4fac5fea89314f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.31/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8c1934f6c615fdc4a5e8d1e2f1eee24fbc7cc26bf1de69d0acd3230b65f31dc0"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.31/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b1eca4be691e78a9c0b2357735a3c26201d06b8c628b7b4e42ecca7f677756ab"
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
