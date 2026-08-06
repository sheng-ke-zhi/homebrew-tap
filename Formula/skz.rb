class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.13"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.13/skz-aarch64-apple-darwin.tar.gz"
      sha256 "536c9d5c4d2ce2b08703a5b298df4de30930990688eee03474602e960293cd64"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.13/skz-x86_64-apple-darwin.tar.gz"
      sha256 "1253a7e5f7a48ac26146bee781a961ebcc3fccfb216162002dfa383dced069d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.13/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8c331875c6a120c3f45a16cb39cac3e7b5d8ff0f25b011d4914c98a8940982a8"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.13/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e529f32a9729097cbb3181c3e1c650ccec0a7fbbce9d0fd9ec77a4928080258e"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
