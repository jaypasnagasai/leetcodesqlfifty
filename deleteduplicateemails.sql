-- 196. Delete Duplicate Emails

delete x from person x,person y where x.email=y.email and x.id>y.id;
