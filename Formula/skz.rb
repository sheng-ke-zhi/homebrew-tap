class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.42"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.42/skz-aarch64-apple-darwin.tar.gz"
      sha256 "dac3e8b738932d8bacadcc0299dbdf1ff333484636127e987819dc0475f5e35c"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.42/skz-x86_64-apple-darwin.tar.gz"
      sha256 "7f838d1296a0b3abfaf17e6b46db11b012e8b5f160479490a38fddc59051e5b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.42/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "31af1c81808233df58a5e01b10929dd04949cd7879717f0569899396b7c55bb8"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.42/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fce2f1aed8f29a195cf66c4a15ab2d14007cfc14feb586cb8e12ab95a74514f5"
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
