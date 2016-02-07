SELECT * FROM sentiment WHERE dt = ‘20160102’;
SELECT * FROM sentiment WHERE ch = ’facebook’ AND dt = ‘20160102’;
SELECT * FROM sentiment WHERE ch = ’facebook’ and dt > ‘20160101’;
SELECT * FROM sentiment WHERE ch = ’facebook’ AND cu = 2 AND dt >= ‘20160102’ AND dt <= ‘20160103’;
