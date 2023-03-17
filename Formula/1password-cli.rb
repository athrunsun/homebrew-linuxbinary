class OnePasswordCli < Formula
  name "1password-cli"
  desc "1Password CLI"
  homepage "https://support.1password.com/command-line/"
  version "0.9.4"

  url "https://cache.agilebits.com/dist/1P/op/pkg/v#{version}/op_linux_amd64_v0.9.4.zip"
  sha256 "02ecf34ea840552926d3273bcf07f08658c3c5481e8f1630b48eb7c841f4ed8b"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink("#{libexec}/op" => "op")
  end

  def caveats; <<~EOS
    Executable is linked as "op".
    EOS
  end

  test do
    system "#{bin}/op", "--version"
  end
end

