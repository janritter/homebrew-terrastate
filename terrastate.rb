# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.11.1/darwin_amd64_terrastate"
      sha256 "e8272710f67bb9ea988ece976bbce4eaf6e54329983c82a4e07aa3dee3e6149d"
      version "1.11.1"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.11.1/linux_amd64_terrastate"
      sha256 "843a7e17e7bbaa8e577d6b4825bec7aa7a6ff7d8b9fcabc5525fd5b37135b4c2"
      version "1.11.1"
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