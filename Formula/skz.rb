class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.41"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.41/skz-aarch64-apple-darwin.tar.gz"
      sha256 "a76d019a38be98480493800d8ff41e51c41f209450084df8b9b9f6421363a1ab"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.41/skz-x86_64-apple-darwin.tar.gz"
      sha256 "8b9a02525b72654b33c3985509f222198a4d8d498f85ff564bdb37371cc00d6b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.41/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9fa468a71ff6dbdfa247bc4af08ce593746d25beaf3a7e9d0714266ef1f87628"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.41/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da6a40af385c7d22678dd5f96a36b7bceb34f955393819973b9a58d9a7a2d6fb"
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
