class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.18"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.18/skz-aarch64-apple-darwin.tar.gz"
      sha256 "796da8df63f390db1bfe49996c5ebdb869210f85c2ff94bd364fa21a3314af1a"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.18/skz-x86_64-apple-darwin.tar.gz"
      sha256 "037d37cf482721b6feef25b58bd61bb0308bc86fcefd7a84eb241a99e3ded7cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.18/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "85f4270707d675c27ddbc7ef05f3d666de2267749c6f9b9570a0836d15db0833"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.18/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f750bed4e7e0bdcb84b48a28a5900b0efc71b72b75a3012560bbbce4ccdb8473"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
