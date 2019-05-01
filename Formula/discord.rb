class Discord < Formula
  desc "All-in-one voice and text chat for gamers that's free & secure"
  homepage "https://discordapp.com/"
  version "0.0.9"

  url "https://dl.discordapp.net/apps/linux/#{version}/discord-#{version}.tar.gz"
  sha256 "4e5b955768cb35c0d1564e3bfb174470efc97028a1c38046770266105a440ec4"

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
