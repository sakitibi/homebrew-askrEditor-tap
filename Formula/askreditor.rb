Version = "2.0.90";
class Askreditor < Formula
  desc "CLI editor for .askr files with Supabase replace integration"
  homepage "https://github.com/sakitibi/askreditor"
  version Version

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-darwin-arm64.tar.gz"
      sha256 "42fe749d4f5e5379d65104562b0fc0915338ee8167b8d4b238874f67a88fe0e1"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-darwin-amd64.tar.gz"
      sha256 "954869412bc8e6d2aaa7458c7f4659c9f5043b864b109e97952c7abe4eca3c18"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-linux-arm64.tar.gz"
      sha256 "b6b18789a223629dd2ac37eb3eef8cd5e4af178de710c7de77d22a19bfc7292b"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-linux-amd64.tar.gz"
      sha256 "cdd0f3db9f19a0b69a78f345e05d34510ab8dc0cd0ec607077130b08a2e848a6"
    end
  end

  def install
    bin.install "askreditor"
  end

  test do
    system "#{bin}/askreditor", "--help"
  end
end
