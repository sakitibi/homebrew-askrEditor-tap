Version = "2.0.40";
class Askreditor < Formula
  desc "CLI editor for .askr files with Supabase replace integration"
  homepage "https://github.com/sakitibi/askreditor"
  version Version

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-darwin-arm64.tar.gz"
      sha256 "b68722eed44889a63bcc946db069af4ef0c08cbb16f6dbf70a2741953647a226"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-darwin-amd64.tar.gz"
      sha256 "813be2935c4a238dc965332eaedb3738bdf67406e8d1e1eca4b280894d384d8b"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-linux-arm64.tar.gz"
      sha256 "0c28630fb82ba7aef4d1aa1601132bbdc58a5ec06f543c8a0ab8264518dabbb4"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-linux-amd64.tar.gz"
      sha256 "eea77625ad2127590f7eb128c9cfa851c3df3da2c4f374c7ef6e508655bad955"
    end
  end

  def install
    bin.install "askreditor"
  end

  test do
    system "#{bin}/askreditor", "--help"
  end
end
