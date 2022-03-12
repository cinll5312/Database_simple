# Database_simple
%f.k %p.k %entity

Phone(IMEI, user_id, phone_number)


Phone_account(authentication_code, user_name, password, creation_date, phone_IMEI)

%phone_IMEI : f.k -> Phone : p.k


Class(class_name, class_type, Phone_code)

%Phone_code : f.k -> Phone_account : p.k

Account(account_name, password, website, class_id)

%class_id : f.k -> Class : p.k 
