require "language/node"

class MicrosoftTeams < Formula
  desc "Unofficial Microsoft Teams for Linux client"
  homepage "https://github.com/ivelkov/teams-for-linux"
  version "0.0.4"
  url "https://github.com/ivelkov/teams-for-linux/releases/download/v#{version}/teams-for-linux-#{version}.tar.gz"
  sha256 "65fa915740bccce609b38d8bb2e15063ebf4c34d50948f2a7b634129e402a183"
  head "https://github.com/ivelkov/teams-for-linux.git"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink("#{libexec}/teams" => "teams")
  end

  def caveats; <<-EOS.undent
    Executable is linked as "teams".
    EOS
  end
end
