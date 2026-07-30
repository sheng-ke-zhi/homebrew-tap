class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.6"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.6/skz-aarch64-apple-darwin.tar.gz"
      sha256 "61349feb553a68a24556384955ec1d3f62de8708fadd132eaf85cf25eddb7aad"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.6/skz-x86_64-apple-darwin.tar.gz"
      sha256 "8ba24cdd1d3d9e42f429fbb7316a198fb4050aa5649b2c00685f54b17b5a5df8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.6/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "efe6925b10ca99364e380e33e85bc0b8579339f751963fe254ce9eb50a17b9d6"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.6/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a5ff629b9c12cee7b840676a5f2ca6380997d62a231af92c59d906e40e453822"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
