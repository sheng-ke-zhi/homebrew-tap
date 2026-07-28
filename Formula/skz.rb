class Skz < Formula
  desc "面向 AI Agent 的胜可知量化研究与实盘交易命令行工具"
  homepage "https://github.com/sheng-ke-zhi/skz-quant-cli"
  version "0.1.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli-releases/releases/download/v0.1.4/skz-aarch64-apple-darwin.tar.gz"
      sha256 "de77814743f9a5fe2a2b9ba7ef415fca52a635cd8927312f18c0d7842be01cdd"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli-releases/releases/download/v0.1.4/skz-x86_64-apple-darwin.tar.gz"
      sha256 "fb70ce6df2165007b97f90be970ff8392fed5cacb8323642cf63dab55dd843a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli-releases/releases/download/v0.1.4/skz-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eaa483c4c1acdd6d230dafb6907e9be67255fe93f75082a70db60e9baad8c03b"
    end
    on_intel do
      url "https://github.com/sheng-ke-zhi/skz-quant-cli-releases/releases/download/v0.1.4/skz-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3a9eaa92a226bd8ba838850a322ca914eeb9a75c742bc6d1cddc3f9f4c10f875"
    end
  end

  def install
    bin.install "skz"
  end

  test do
    system "#{bin}/skz", "--version"
  end
end
