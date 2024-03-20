# Get the currently logged-in user
logged_in_user=$(whoami)

# Get the shell directory
shell_directory=$(echo $SHELL)

# Get the home directory
home_directory=$(eval echo "~$logged_in_user")

# Get the operating system name
os_name=$(uname -s)

# Get the operating system version
os_version=$(uname -r)

# Get the current working directory
current_working_directory=$(pwd)

# Get the number of users logged in
num_users=$(who | awk '{print $1}' | sort -u | wc -l)

echo "1/ Currently logged-in user: $logged_in_user"
echo "2/ Shell directory: $shell_directory"
echo "3/ Home directory: $home_directory"
echo "4/ Operating System: $os_name"
echo "5/ Operating System Version: $os_version"
echo "6/ Current working directory: $current_working_directory"
echo "7/ Number of users logged in: $num_users"

#Show all available shells in system
echo "8/ Available shells in your system:"
cat /etc/shells

# H. Hard disk information
echo "9/ Hard disk information:"
df -h
# I. CPU information
echo "10/ CPU information:"
# Display CPU info
cat /proc/cpuinfo | grep "model name" | uniq | awk -F ':' '{print $2}' | sed -e 's/^[ \t]*//'

# J. Memory information
echo "11/ Memory information:"
 cat /proc/meminfo

# K. File system information
echo "12/ File system information:"
df -T

# L. Currently running processes
echo "13/ Currently running processes:"
ps aux