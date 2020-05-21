# This file was generated by GoReleaser. DO NOT EDIT.
class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  version "1.5.6-release-test"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/redbubble/yak/releases/download/v1.5.6-release-test/yak_1.5.6-release-test_darwin_amd64.tar.gz"
    sha256 "ffb062a5643df41a10872e59018bdee57b860cc17581f23607625bd42e142f1f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/redbubble/yak/releases/download/v1.5.6-release-test/yak_1.5.6-release-test_linux_amd64.tar.gz"
      sha256 "670b7c3ed3f5862f3c48be66de58cb887670a19445c54bdbe16ef6fb3dfd7498"
    end
  end

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
