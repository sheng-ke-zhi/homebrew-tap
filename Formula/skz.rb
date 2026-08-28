class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.30"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.30/skz-aarch64-apple-darwin.tar.gz"
      sha256 "51609cc1666f85fcfe93356a3eb3c38d29f85661d9ec52b12d4ef51634745f8d"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.30/skz-x86_64-apple-darwin.tar.gz"
      sha256 "1b7bece33f99a994a8d30fd3e794a9e2a82414a45d05071159887c47d664fa4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.30/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a76966ac4841a0d1d645bd4a6f4fff643f8080e744a395a83bfa7ad8cd9a3f0a"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.30/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0dad0983f3ba7e3ecb3c7c583e0b481957278d894fc5531839572906909345e4"
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
