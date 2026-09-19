class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.38"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.38/skz-aarch64-apple-darwin.tar.gz"
      sha256 "6dbb6add3963322e3095837909861867cb202792fe100c4d7f279fda1df51013"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.38/skz-x86_64-apple-darwin.tar.gz"
      sha256 "b67a1fa7f4d8a67c57cb273ca87bc6fe11c275894b2966fce615e9971d18c0a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.38/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fee7389a585b5dd8876613e0984f47efa5e23a1f82b63255ff56a5f553b7537b"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.38/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "548b7b4643cee9bdd97ffc7012e5a555ceeba8a1f8b4616df29a81c3c9c7d0ad"
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
