# turn into ruby script

# Download arch linux and checksum

repo_url="http://ftp.tsukuba.wide.ad.jp/Linux/archlinux/iso/latest"
curl -Ls ${repo_url}/md5sums.txt | grep 'dual.iso' | read md5 filename
curl -LO ${repo_url}/${filename}
case $OSTYPE in
  darwin*)
  if [ "${md5}" = "$(md5 -q ${filename} ]; then
    echo ok
  fi
  ;;
  linux*)
    if [ "${md5}" = "$(md5sum ${filename})" ]; then
      echo ok
    fi
  ;;
esac
