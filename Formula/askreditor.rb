Version = "2.0.60";
class Askreditor < Formula
  desc "CLI editor for .askr files with Supabase replace integration"
  homepage "https://github.com/sakitibi/askreditor"
  version Version

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-darwin-arm64.tar.gz"
      sha256 "3a43a194ca4fa1e1e1b50becdc73fba275b7b9b19e3004c618fd9984daa8b626"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-darwin-amd64.tar.gz"
      sha256 "5bfe79265db0147e7eb22a8ff68b382c75d99acf14e6505192e879a1aab47eb1"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-linux-arm64.tar.gz"
      sha256 "6b02914a556fa6ea33172e76aca3f3ade8c82f471ae091c60c5de1fb25fee041"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-linux-amd64.tar.gz"
      sha256 "e392fad4eed92a0ae82aa5b2c96ba49078edae968b887e8b0c6aa8c12feb1bbb"
    end
  end

  def install
    bin.install "askreditor"
  end

  test do
    system "#{bin}/askreditor", "--help"
  end
end
