function update_gh --argument gh_version
    if test $gh_version
        echo "fazendo o download do gh versão $gh_version"
        cd ~/Downloads
        echo $PWD
        wget "https://github.com/cli/cli/releases/download/v"$gh_version"/gh_"$gh_version"_linux_amd64.deb"
        sudo dpkg -i "gh_"$gh_version"_linux_amd64.deb"
        cd -
    end
end
