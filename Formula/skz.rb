class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.23"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.23/skz-aarch64-apple-darwin.tar.gz"
      sha256 "8432e53ace782e070653fe995d6fe052098816928d57e8fd95a4692803aa2667"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.23/skz-x86_64-apple-darwin.tar.gz"
      sha256 "85d12b4b8960ca62dfb3719ef92a2cb8b3f5da38b213602123daff95a4505e75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.23/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d21892f997e08b16e093e13d055906e28a63008d49573af27842881154be9359"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.23/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6052947885324df2235b24a2404816a582340d62ad6ba7088ac800a513b00bd4"
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
