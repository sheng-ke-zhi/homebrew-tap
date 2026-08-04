class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.11"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.11/skz-aarch64-apple-darwin.tar.gz"
      sha256 "fe05033e675543c45bb9dadb2998a5077b77d8b167cda8745f72d0d00c7447be"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.11/skz-x86_64-apple-darwin.tar.gz"
      sha256 "c24000e2ad9170d027deeaa717f749a06f4e9d22dbed8ee3d641b29ecb0ef26c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.11/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b0ab5f32218e715fd74f4ad8aae1fd2e6b1db57f1148d2a152b83d5aa27a5c06"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.11/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "22322b77aa02195b0681746d07d95da3a8699cce75d1d9a62c7bd9fabc806700"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
