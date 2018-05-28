class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.3.1/yak_1.3.1_darwin_amd64.tar.gz"
  version "1.3.1"
  sha256 "8d0d48138bab374246fcb07d05d171001359e3f45dd6d4df0ff092eb1a1f0ec3"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
