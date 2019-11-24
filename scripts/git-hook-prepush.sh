# $? 0: successfully end, 1: some issue
echo "\033[32m[pre-push] Start prepush check\033[0m"

# Check for eslint
which eslint &> /dev/null
if [[ "$?" == 1 ]]; then
    echo "\033[31mPlease install ESlint\033[0m"
    exit 1
fi

# Eslint check all files under src/
eslint src/**
if [[ "$?" == 1 ]]; then
    echo "\033[31mESlint check fail, abort git push\033[0m"
    exit 1
fi

echo "\033[32m[pre-push] successfully\033[0m"
