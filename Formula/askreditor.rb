Version = "2.0.60";
class Askreditor < Formula
  desc "CLI editor for .askr files with Supabase replace integration"
  homepage "https://github.com/sakitibi/askreditor"
  version Version

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-darwin-arm64.tar.gz"
      sha256 "774b743dbf4947a868c2a8f8513f0a4460a7742ed053f6e6ba72b0daa19ab6fb"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-darwin-amd64.tar.gz"
      sha256 "c0c5bbb3d9f3c3d4eb46f9b670a7f0abc18d2a314d3fc5e114a471b78fe2fc5b"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-linux-arm64.tar.gz"
      sha256 "e731f642a25b47509c7b945db9cfb567550efc6d62184bc4ac88bdb4b3cb36f5"
    else
      url "https://github.com/sakitibi/askreditor/releases/download/v#{Version}/askreditor-#{Version}-linux-amd64.tar.gz"
      sha256 "cbfe8ef0746365b1ce59190edb166c7beb0a92ab94c6fc1eacce604d999d336a"
    end
  end

  def install
    bin.install "askreditor"
  end

  test do
    system "#{bin}/askreditor", "--help"
  end
end
