#! /bin/bash

LOGIN_INFO="psql --username=freecodecamp --dbname=salon"

SERVICE_ROW_COUNT=$($LOGIN_INFO -t -c "SELECT COUNT(*) FROM services;")

MAIN_MENU () {
  echo Welcome, select service.
  $LOGIN_INFO -t -c "SELECT service_id || ') ' || name FROM services;"
}


while true ; do
  MAIN_MENU

  read SERVICE_ID_SELECTED

  # Check if the integer is within the valid range
  if [ "$SERVICE_ID_SELECTED" -ge 1 ] && [ "$SERVICE_ID_SELECTED" -le "$SERVICE_ROW_COUNT" ]; then
      echo $SERVICE_ID_SELECTED selected
      break
  else
      echo Please Enter a Valid Selection
  fi  
done

SERVICE_NAME=$($LOGIN_INFO -t -c "select name from services where service_id='$SERVICE_ID_SELECTED'")

while true ; do
  echo Please enter your phone number

  read CUSTOMER_PHONE

  CUSTOMER_NAME=$($LOGIN_INFO -t -c "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE';")
  CUST_ID=$($LOGIN_INFO -t -c "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE';")

  if [ -z "$CUSTOMER_NAME" ]; then
    echo Phone number not found!
  else
    echo Welcome $CUSTOMER_NAME
    break
  fi

  echo Enter your name:
  read CUSTOMER_NAME

  $LOGIN_INFO -c "insert into customers (name,phone) values('$CUSTOMER_NAME','$CUSTOMER_PHONE');"
  CUST_ID=$($LOGIN_INFO -t -c "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE';")
  break
done


echo $CUST_ID

echo Enter a time:
read SERVICE_TIME

$LOGIN_INFO -c "insert into appointments (customer_id,service_id,time) values($CUST_ID,$SERVICE_ID_SELECTED,'$SERVICE_TIME');"

echo I have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME.