# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.11.4/darwin_amd64_terrastate"
      sha256 "6f97bb50c7aea75711e675f24c4e422605c737263e201366408022ad738990ee"
      version "1.11.4"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.11.4/linux_amd64_terrastate"
      sha256 "766765f4a37634b3ec541507cf2b07b9d83d24e0271035d2dfb535f242910fd1"
      version "1.11.4"
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