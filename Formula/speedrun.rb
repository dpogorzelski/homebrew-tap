class Speedrun < Formula
  desc "Speedrun"
  homepage "https://speedrun.sh"
  version "0.2.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dpogorzelski/speedrun/releases/download/v0.2.2/speedrun_0.2.2_darwin_x86_64.tar.gz"
    sha256 "38b3e051239f3d0e6eb39266352fb646cb5690a7d9f76784d75fc2e131a12e3c"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dpogorzelski/speedrun/releases/download/v0.2.2/speedrun_0.2.2_darwin_arm64.tar.gz"
    sha256 "95588c2b1bba103913e3c81e635af8f82eec2510f1a59ded354227ba0c80187d"
  end

  if OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/dpogorzelski/speedrun/releases/download/v0.2.2/speedrun_0.2.2_linux_x86_64.tar.gz"
    sha256 "4f7f4f9e23a21c95d0c89fc68d6f96b98c6c52c617910921d881290a8074a58e"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/dpogorzelski/speedrun/releases/download/v0.2.2/speedrun_0.2.2_linux_arm64.tar.gz"
    sha256 "778c40be2375aa66c8ac5275a84e2f5f615b03e467c88030e834953668a0176d"
  end

  bottle :unneeded

  conflicts_with "speedrun"

  def install
    bin.install "speedrun"
  end

  test do
    system "#{bin}/speedrun -v"
  end
end
