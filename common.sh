### Printing function
RED='\033[0;32m'
NC='\033[0m' # No Color
function print() {
    printf "\n${RED}$1${NC}\n"
}