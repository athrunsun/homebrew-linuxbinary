class Discord < Formula
  desc "All-in-one voice and text chat for gamers that's free & secure"
  homepage "https://discordapp.com/"
  version "0.0.16"

  url "https://dl.discordapp.net/apps/linux/#{version}/discord-#{version}.tar.gz"
  sha256 "51354a8ecfe2ec2fe6f35e356d706c6a441115dfdcfff126aaa84a864af538e9"


  def install
    libexec.install Dir["*"]
    bin.install_symlink("#{libexec}/Discord" => "discord")
  end

  def caveats; <<~EOS
    Executable is linked as "discord".
    EOS
  end
end
