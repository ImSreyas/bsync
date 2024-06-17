function dnf_sync() {
    local temp_dir=$final_target/dnf/temp
    mkdir -p $temp_dir
    local temp_file_name=packages.txt
    local temp_file_path=$temp_dir/$temp_file_name
    dnf history userinstalled | tail -n +2 > $temp_file_path
    # Main call
    # $1) Filename
    # $2) File path 
    # $3) Question 
    # $4) Output target 
    # $5) Forwarding first argument of current function ($1) 
    sync_file $temp_file_name $temp_file_path "Backup <<dnf user-installed packages>> file?" $final_target/dnf $1 
    rm -rf $temp_dir 
}