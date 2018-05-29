class Discord < Formula
  desc "All-in-one voice and text chat for gamers that's free & secure"
  homepage "https://discordapp.com/"
  version "0.0.5"

  url "https://dl.discordapp.net/apps/linux/#{version}/discord-#{version}.tar.gz"
  sha256 "2f4464bcea532673ca7b314dc2a1b7966f5d175e535a0254753f778dc559ef18"

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
