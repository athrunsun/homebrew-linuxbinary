class Discord < Formula
  desc "All-in-one voice and text chat for gamers that's free & secure"
  homepage "https://discordapp.com/"
  version "0.0.18"

  url "https://dl.discordapp.net/apps/linux/#{version}/discord-#{version}.tar.gz"
  sha256 "0417389fa437c6e044d77252de0cffe8473074e596e7b34ba76b1a3a5c0e80c2"


  def install
    libexec.install Dir["*"]
    bin.install_symlink("#{libexec}/Discord" => "discord")
  end

  def caveats; <<~EOS
    Executable is linked as "discord".
    EOS
  end
end
