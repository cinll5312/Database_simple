# Database_simple
#f.k #p.k #entity

Phone(IMEI ,user_id ,phone_number)	

Phone_account(authentication code, user_name, password, creation_date, phone_IMEI)
# phone_IMEI: f.k. → Phone: p.k.

Class(class_name, class_type,Phone_code)
# Phone_code: f.k. → Phone_account: p.k.

Account(account_name,password,website,class_id)
# class_id: f.k. → Class: p.k.
![image](https://user-images.githubusercontent.com/79518665/158006847-06cb63a5-ab6c-4ff9-9845-a4c62b6ae0a7.png)
