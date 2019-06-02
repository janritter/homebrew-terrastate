# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.2.2/darwin_amd64_terrastate"
      sha256 "631151b73d410f53bb6f5a5171d6a36a8f5d0d9b4c389bff5073e0cdb945974f"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.2.2/linux_amd64_terrastate"
      sha256 "cd0f1e23e4c5edd1de4baa99278c1157871fa1454abb4db7ca2146468f8fa468"
    end

    def install
      if OS.mac?
        bin.install "darwin_amd64_terrastate"
        mv bin/"darwin_amd64_terrastate", bin/"terrastate"
      elsif OS.linux?
        bin.install "linux_amd64_terrastate"
        mv bin/"linux_amd64_terrastate", bin/"terrastate"
      end
    end
  
    test do
      system "false"
    end
  end