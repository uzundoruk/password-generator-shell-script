SYMBOLS="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
LENGTH=$1



while [ "${n:=1}" -le "$LENGTH" ]
do
	PASS="$PASS${SYMBOLS:$(($RANDOM%${#SYMBOLS})):1}"
	let n+=1
done

echo "Your password is: $PASS"

exit 0
