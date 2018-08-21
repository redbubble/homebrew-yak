class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.4.1/yak_1.4.1_darwin_amd64.tar.gz"
  version "1.4.1"
  sha256 "be240038eec85fbb81abcd606efdec8e94d71fd46fbd8a422cc955b69e2a47d5"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
