class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.29"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.29/skz-aarch64-apple-darwin.tar.gz"
      sha256 "b125e64529993a6a63ba74b92d22a62dab5c3633fec3945ce164b0c2a0d45f17"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.29/skz-x86_64-apple-darwin.tar.gz"
      sha256 "507966b0e4c158b6384d2f1c1f2b9dade81957ce5737896c60ab76c209d6c7f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.29/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ffb0fccd091da1e54deb44b0588e478a28f8145f2ab4032f7beac9477f803298"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.29/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "716fa9d9332c07510a8fcc0ff037fb602e1f77fcf6440e1e759a0f966e995a28"
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
