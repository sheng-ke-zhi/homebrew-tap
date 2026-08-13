class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.21"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.21/skz-aarch64-apple-darwin.tar.gz"
      sha256 "a8394302b25f58bde2adf200867f59780af38e19f9a4426909315fd136dce726"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.21/skz-x86_64-apple-darwin.tar.gz"
      sha256 "c06deb77fa7393cdfef7b62ab810027e551eef32e420ed87fc995ebc3b499a74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.21/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e8331e91f7eaf51b2da315e740b0d8663dadb923cdf52ff1a8540fce60d7cc28"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli/releases/download/v0.1.21/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "331878a4bac7864c63e77dea634b4a9760d3b1cd74613010b335734df8890cd7"
    end
  end

  def install
    libexec.install "skz", "skills"
    bin.install_symlink libexec/"skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
