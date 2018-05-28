class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.3.0/yak_1.3.0_darwin_amd64.tar.gz"
  version "1.3.0"
  sha256 "aa0dcf2c99c4b5cffa7c4f07a619dbfb54f65b61101b2e0267a3db41b86dfde1"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
