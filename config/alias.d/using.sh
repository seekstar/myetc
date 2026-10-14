alias using="ps -e -o uid --no-headers | awk '\$1 >= 1000' | sort -u | xargs -i id -nu {}"
