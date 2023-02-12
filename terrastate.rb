# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.11.5/darwin_amd64_terrastate"
      sha256 "7288d790562fa59612e077928476377e765457341fbafaf9fa2ac1ddc74fbe7b"
      version "1.11.5"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.11.5/linux_amd64_terrastate"
      sha256 "0e499695f409d4224589a1c11c8f99eb06cc3de24948875e7d62e492189f0be2"
      version "1.11.5"
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