class Discord < Formula
  desc "All-in-one voice and text chat for gamers that's free & secure"
  homepage "https://discordapp.com/"
  version "0.0.4"

  url "https://dl.discordapp.net/apps/linux/#{version}/discord-#{version}.tar.gz"
  sha256 "8b62e49088d3bf525ab07ba6a64ec3f1c8c7c252a9c13178d060efb0674e9caa"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink("#{libexec}/Discord" => "discord")
  end

  def caveats; <<~EOS
    Executable is linked as "discord".
    EOS
  end
end
