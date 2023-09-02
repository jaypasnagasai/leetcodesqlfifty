-- 1517. Find Users With Valid E-Mails

select * from Users where mail regexp '^[A-Z][A-Z0-9_.-]*[@]leetcode[.]com$';
