README_PATH=./README.md
README_TEMPLATE_PATH=./README_TEMPLATE.md

total=0
ca_cert_list=""

main() {
    for path in ./certs/*; do 
        append_cert_info_by_cert $path
        let total++
    done
    

    sed -e "s/{{total}}/$total/g" $README_TEMPLATE_PATH > $README_PATH
    
    local tmp
    tmp=$(echo -n "$ca_cert_list" | sed -e 's/\\/\\\\/g');
    tmp=$(echo -n "$tmp" | sed -z -e 's/\n/\\n/g');

    sed -i -e "s/{{list}}/$tmp/g" $README_PATH

    
    echo "$tmp"
    echo "Total: $total"
    echo "List:"
    #echo "$ca_cert_list"
}

append_cert_info_by_cert() {
    local cert_file_name=$1
    
    local info=$(openssl x509 -text -noout -in $cert_file_name)
    local O=$(echo "$info" | grep "Subject: " | grep -Eo "O = (.*?)" | awk -F ',' '{print $1}' | awk -F '=' '{print $2}' | awk '$1=$1')
    local CN=$(echo "$info" | grep "Subject: " | grep -Eo "CN = (.*?)" | awk -F ',' '{print $1}' | awk -F '=' '{print $2}' | awk '$1=$1')
    
    local cert_info="${cert_file_name: 8:-4} - $O - $CN"

    if [[ -z "$ca_cert_list" ]]; then
        ca_cert_list="$cert_info"
    else
        ca_cert_list="$ca_cert_list"$'\n'"$cert_info"
    fi
}

main
