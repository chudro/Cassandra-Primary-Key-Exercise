select * from sentiment where dt = ‘20160102’;
select * from sentiment where ch = ’facebook’ and dt = ‘20160102’;
select * from sentiment where ch = ’facebook’ and dt > ‘20160101’;
select * from sentiment where ch = ’facebook’ and cu = 'red bull' and dt >= ‘20160102’ and dt <= ‘20160103’;
