<<<<<<<< Update Guide >>>>>>>>>>>

Immediate Older Version: 5.1.0
Current Version: 5.2.0

Feature Update

1. Enhanced the Email Configuration System.
2. Improved Sudo Africa and Stripe Virtual Card integration.
3. Enhanced the Email Configuration System.
4. Implemented PIN Verification for all transactions.
5. Added a feature to Refund Balance from Merchant to User.


Please Use This Commands On Your Terminal To Update Full System
1. To Run project Please Run This Command On Your Terminal
    composer update && php artisan migrate

2. To Update Web & App Version Please Run This Command On Your Terminal
    php artisan db:seed --class=Database\\Seeders\\Update\\VersionUpdateSeeder
    php artisan o:c
