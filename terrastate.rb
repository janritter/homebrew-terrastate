# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.3.1/darwin_amd64_terrastate"
      sha256 "8c69e6999c4124fd1661f6cd655e17f351a1e83a8123e00b3b8733a5cd343132"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.3.1/linux_amd64_terrastate"
      sha256 "55592280287d228ea487c328ba12920c4e329d8ec7177f9f9e122b435678db3f"
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