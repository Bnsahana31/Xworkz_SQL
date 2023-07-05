
SELECT * FROM streetlight;
SELECT * FROM streetlight where PowerStatus='working' and LightID=4;
SELECT * FROM streetlight where LightID='1' and Location='Bangalore';
SELECT * FROM streetlight where Location='BTM' and Latitude=69.009000;
SELECT * FROM streetlight where Latitude=24.956000 and InstallationDate='2007-06-29';
SELECT * FROM streetlight where InstallationDate='2003-07-25' and LightID=17;
SELECT * FROM streetlight where PowerStatus='dead' or LightID=15;
SELECT * FROM streetlight where LightID=17 or Location='Raichur';
SELECT * FROM streetlight where Location='Raichur' or Latitude=67.784000;
SELECT * FROM streetlight where Latitude=69.009000 or InstallationDate='2007-06-29';
SELECT * FROM streetlight where InstallationDate='2000-12-23' or LightID=4;
SELECT * FROM streetlight where LightID in(4,13,16);
SELECT * FROM streetlight where Latitude in(24.956000,69.009000,57.845000);
SELECT * FROM streetlight where Location in('Raichur','Haveri','Kolara');
SELECT * FROM streetlight where PowerStatus in('working','process','dead');
SELECT * FROM streetlight where InstallationDate in('2005-05-25','2004-06-25','2003-07-25');
SELECT * FROM streetlight where LightID not in(2,3,10);
SELECT * FROM streetlight where Latitude not in(33.98767,13.55645,16.767565);
SELECT * FROM streetlight where Location not in('birur','kadur','chickmagalur');
SELECT * FROM streetlight where PowerStatus not in('not working','off');
SELECT * FROM streetlight where InstallationDate not in('2023-07-05');
SELECT * FROM streetlight where LightID between 1 and 6;
SELECT * FROM streetlight where LightIntensity between 210 and 260;
SELECT * FROM streetlight where Latitude between 14.384000 and 67.878000 ;
SELECT * FROM streetlight where wattage between 310 and 340;
SELECT * FROM streetlight where LightID between 8 and 15;


SELECT * FROM BedSheet;
SELECT * FROM BedSheet where id=1 and color='white';
SELECT * FROM BedSheet where brand='Brooklinen' and thread_count=400;
SELECT * FROM BedSheet where material='Bamboo' and size='Queen';
SELECT * FROM BedSheet where color='plaid' and price=59.99;
SELECT * FROM BedSheet where rating=4.5 and id=19;
SELECT * FROM BedSheet where id=5 or color='Navy';
SELECT * FROM BedSheet where brand='Parachute' or thread_count=200;
SELECT * FROM BedSheet where material='Microfiber' or size='King';
SELECT * FROM BedSheet where color='White' or price=39.99;
SELECT * FROM BedSheet where rating= 4.1 or id=15;
SELECT * FROM BedSheet where id in(24.956000,69.009000,57.845000);
SELECT * FROM BedSheet where material in('Raichur','Haveri','Kolara');
SELECT * FROM BedSheet where brand in('working','process','dead');
SELECT * FROM BedSheet where color in('2005-05-25','2004-06-25','2003-07-25');
SELECT * FROM BedSheet where rating in(2,3,10);
SELECT * FROM BedSheet where id not in(2,13,17);
SELECT * FROM BedSheet where material not in('polistar');
SELECT * FROM BedSheet where brand not in('ajio');
SELECT * FROM BedSheet where color not in('pink','red');
SELECT * FROM BedSheet where rating not in(3.3,3.4);
SELECT * FROM Bedsheet where id between 1 and 7;
SELECT * FROM Bedsheet where thread_count between 400 and 200 ;
SELECT * FROM Bedsheet where price between 39.99 and 89.99;
SELECT * FROM Bedsheet where rating between 4 and 4.5;
SELECT * FROM Bedsheet where id between 10 and 17;



SELECT * FROM Sweets;
SELECT * FROM Sweets where id='2' and name='gummy bears';
SELECT * FROM Sweets where name='Lollipop' and category='Hard Candy';
SELECT * FROM Sweets where category='Gum' and flavor='Mint';
SELECT * FROM Sweets where flavor='Glazed' and calories='300';
SELECT * FROM Sweets where calories=50 and sugar_content=8;
SELECT * FROM Sweets where id='dead' or name='Lollipop';
SELECT * FROM Sweets where name=17 or category='Hard Candy';
SELECT * FROM Sweets where category='Raichur' or calories=300;
SELECT * FROM Sweets where flavor='Vanilla' or calories=8;
SELECT * FROM Sweets where price=0.50 or calories=250;
SELECT * FROM Sweets where ID in(3,9,12);
SELECT * FROM Sweets where name in('Lollipop','Marshmallow','Cupcake');
SELECT * FROM Sweets where category in('Hard Candy','Confection','Pastry');
SELECT * FROM Sweets where flavor in('Strawberry','Chocolate','Vanilla');
SELECT * FROM Sweets where calories in(60,40,250);
SELECT * FROM Sweets where calories not in(2,60,1);
SELECT * FROM Sweets where id not in(1,18,19);
SELECT * FROM Sweets where price not in(0.01,0.02);
SELECT * FROM Sweets where weight_g not in(116,876,98);
SELECT * FROM Sweets where manufacturer not in('sahana','bhuvana');
SELECT * FROM Sweets where id between 2 and 7;
SELECT * FROM Sweets where calories between 50 and 300;
SELECT * FROM Sweets where price between 2.00 and 4.50;
SELECT * FROM Sweets where sugar_content between 20 and 30;
SELECT * FROM Sweets where weight_g between 60 and 120;


SELECT * FROM Phone;
SELECT * FROM Phone where id=25 and p_brand='Samsung';
SELECT * FROM Phone where p_brand='Xiaomi' and p_model='Mi 11';
SELECT * FROM Phone where p_model='Wing 5G' and storage_capacity=128;
SELECT * FROM Phone where p_price=899 and release_date='2020-04-07';
SELECT * FROM Phone where id=10 and storage_capacity=128;
SELECT * FROM Phone where id=5 or p_brand='Huawei';
SELECT * FROM Phone where p_brand='Xiaomi'or p_model='Velvet';
SELECT * FROM Phone where p_model='Redmi Note 10 Pro' or storage_capacity=128;
SELECT * FROM Phone where storage_capacity=256 or p_price=749;
SELECT * FROM Phone where release_date='2019-02-24' or id=4;
SELECT * FROM Phone where id in(5,10,16);
SELECT * FROM Phone where p_brand in('Google','Xiaomi','Sony');
SELECT * FROM Phone where p_model in('Velvet','Xperia 5 II','Redmi Note 10 Pro');
SELECT * FROM Phone where storage_capacity in(128,256);
SELECT * FROM Phone where release_date in('2020-08-20','2020-07-22','2020-07-22');
SELECT * FROM Phone where id not in(1,2,3);
SELECT * FROM Phone where p_brand not in('rm','Xi','Sny');
SELECT * FROM Phone where p_model not in('vlt','osi5','Redmi Note 8');
SELECT * FROM Phone where storage_capacity not in(179,257);
SELECT * FROM Phone where release_date not in('2021-08-20','2021-07-22','2010-07-22');
SELECT * FROM Phone where release_date between '2020-07-22' and '2020-09-03';
SELECT * FROM Phone where id between 5 and 10;
SELECT * FROM Phone where storage_capacity between 64 and 128 ;
SELECT * FROM Phone where release_date between '2021-03-01' and '2022-04-07';
SELECT * FROM Phone where storage_capacity between 128 and 256;



