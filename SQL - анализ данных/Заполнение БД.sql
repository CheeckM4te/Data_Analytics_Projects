DROP TABLE IF EXISTS employee CASCADE;
DROP TABLE IF EXISTS department CASCADE;
DROP TABLE IF EXISTS location CASCADE;
DROP TABLE IF EXISTS job CASCADE;
DROP TABLE IF EXISTS customer CASCADE;
DROP TABLE IF EXISTS sales_order CASCADE;
DROP TABLE IF EXISTS item CASCADE;
DROP TABLE IF EXISTS price CASCADE;
DROP TABLE IF EXISTS product CASCADE;

create table employee (
  employee_id SERIAL PRIMARY KEY,
  last_name varchar(15),
  first_name varchar(15),
  middle_initial varchar(1),
  manager_id smallint,
  job_id smallint,
  hire_date timestamp,
  salary numeric(7,2),
  commission numeric(7,2),
  department_id smallint  );

create table department (
  department_id SERIAL PRIMARY KEY,
  name varchar(14),
  location_id smallint );


create table location (
  location_id SERIAL PRIMARY KEY,
  regional_group varchar(20) );

create table job  (
  job_id SERIAL PRIMARY KEY,
  function varchar(30) );

create table customer (
  customer_id SERIAL PRIMARY KEY,
  name varchar(45),
  address varchar(40),
  city varchar(30),
  state varchar(2),
  zip_code varchar(9),
  area_code smallint,
  phone_number integer,
  salesperson_id smallint,
  credit_limit numeric(9,2), 
  comments varchar(500) );

create table sales_order (
  order_id SERIAL PRIMARY KEY,
  order_date timestamp,
  customer_id integer,
  ship_date timestamp,
  total numeric(8,2) );

create table item (
  order_id smallint not null,
  item_id smallint not null,
  product_id integer,
  actual_price numeric(8,2),
  quantity integer,
  total numeric(8,2),
primary key (order_id,item_id)
);

create table product (
  product_id SERIAL PRIMARY KEY,
  description varchar(30) );

create table price (
  product_id integer not null,
  list_price numeric(8,2),
  min_price numeric(8,2),
  start_date timestamp not null,
  end_date timestamp,
  primary key (product_id,start_date)
);

insert into customer values(100,'jocksports','345 viewridge','belmont','ca','96711',415,5986609,7844,5000,'very friendly people to work with -- sales rep likes to be called mike.');
insert into customer values(101,'tkb sport shop','490 boli rd.','redwood city','ca','94061',415,3681223,7521,10000,'rep called 5/8 about change in order - contact shipping.');
insert into customer values(102,'vollyrite','9722 hamilton','burlingame','ca','95133',415,6443341,7654,7000,'company doing heavy promotion beginning 10/89. prepare for large orders during w');
insert into customer values(103,'just tennis','hillview mall','burlingame','ca','97544',415,6779312,7521,3000,'contact rep about new line of tennis rackets.');
insert into customer values(104,'every mountain','574 surry rd.','cupertino','ca','93301',408,9962323,7499,10000,'customer with high market share (23%) due to aggressive advertising.');
insert into customer values(105,'k + t sports','3476 el paseo','santa clara','ca','91003',408,3769966,7844,5000,'tends to order large amounts of merchandise at once. accounting is considering r');
insert into customer values(106,'shape up','908 sequoia','palo alto','ca','94301',415,3649777,7521,6000,'support intensive. orders small amounts (< 800) of merchandise at a time.');
insert into customer values(107,'womens sports','valco village','sunnyvale','ca','93301',408,9674398,7499,10000,'first sporting goods store geared exclusively towards women. unusual promotional');
insert into customer values(108,'north woods health and fitness supply center','98 lone pine way','hibbing','mn','55649',612,5669123,7844,8000,'');
insert into customer values(201,'stadium sports','47 irving pl.','new york','ny','10003',212,5555335,7557,10000,'large general-purpose sports store with an affluent customer base.');
insert into customer values(202,'hoops','2345 adams ave.','leicester','ma','01524',508,5557542,7820,5000,'specializes in basketball equipment.');
insert into customer values(203,'rebound sports','2 e. 14th st.','new york','ny','10009',212,5555989,7557,10000,'follow up on the promotion proposal.');
insert into customer values(204,'the power forward','1 knots landing','dallas','tx','75248',214,5550505,7560,12000,'large floorspace.  prefers maintaining large amounts of inventory on hand.');
insert into customer values(205,'point guard','20 thurston st.','yonkers','ny','10956',914,5554766,7557,3000,'tremendous potential for an exclusive agreement.');
insert into customer values(206,'the coliseum','5678 wilbur pl.','scarsdale','ny','10583',914,5550217,7557,6000,'contact rep. about new product lines.');
insert into customer values(207,'fast break','1000 herbert ln.','concord','ma','01742',508,5551298,7820,7000,'customer requires written price quotes before making purchase requisitions.');
insert into customer values(208,'al and bob''s sports','260 yorktown ct.','austin','tx','78731',512,5557631,7560,4000,'very personal purchasing agents -- sharon and scott.');
insert into customer values(211,'at bat','234 beachem st.','brookline','ma','02146',617,5557385,7820,8000,'have an open purchase order for $3000.  ship immediately on request.');
insert into customer values(212,'all sport','1000 38th st.','brooklyn','ny','11210',718,5551739,7600,6000,'pursue a contract -- possible candidate for volume purchasing agreements.');
insert into customer values(213,'good sport','400 46th st.','sunnyside','ny','11104',718,5553771,7600,5000,'may be moving to a larger location.');
insert into customer values(214,'al''s pro shop','45 spruce st.','spring','tx','77388',713,5555172,7564,8000,'target market is serious athletes.');
insert into customer values(215,'bob''s family sports','400 e. 23rd','houston','tx','77026',713,5558015,7654,8000,'target market is casual and weekend athletes.  offers a large selection.');
insert into customer values(216,'the all american','547 prentice rd.','chelsea','ma','02150',617,5553047,7820,5000,'customer prefers to be called between 10 and 12.');
insert into customer values(217,'hit, throw, and run','333 wood court','grapevine','tx','76051',817,5552352,7564,6000,'general purpose sports store.');
insert into customer values(218,'the outfield','346 garden blvd.','flushing','ny','11355',718,5552131,7820,4000,'store does not open until 11am and does not have an answering service.');
insert into customer values(221,'wheels and deals','2 memorial drive','houston','tx','77007',713,5554139,7789,10000,'discount bicycle and sporting good store.');
insert into customer values(222,'just bikes','4000 parkridge blvd.','dallas','tx','75205',214,5558735,7789,4000,'exclusive bicycle dealer.');
insert into customer values(223,'velo sports','23 white st.','malden','ma','02148',617,5554983,7820,5000,'clerk answers all phone lines.  ask for mike.');
insert into customer values(224,'joe''s bike shop','4500 fox court','grand prarie','tx','75051',214,5559834,7789,6000,'call joe to make sure last shipment was complete.');
insert into customer values(225,'bob''s swim, cycle, and run','300 horsecreek circle','irving','tx','75039',214,5558388,7789,7000,'store catering to triathletes.');
insert into customer values(226,'century shop','8 dagmar dr.','huntington','ny','11743',516,5553006,7555,4000,'customer in the midst of a cost-cutting program.');
insert into customer values(227,'the tour','2500 gardner rd.','somerville','ma','02144',617,5556673,7820,5000,'customer referred to us by the all american.');
insert into customer values(228,'fitness first','5000 85th st.','jackson heights','ny','11372',718,5558710,7555,4000,'recently acquired another sporting goods store.  expect higher volume in the fut');

insert into department values(10,'accounting',122);
insert into department values(20,'research',124);
insert into department values(30,'sales',123);
insert into department values(40,'operations',167);
insert into department values(12,'research',122);
insert into department values(13,'sales',122);
insert into department values(14,'operations',122);
insert into department values(23,'sales',124);
insert into department values(24,'operations',124);
insert into department values(34,'operations',123);
insert into department values(43,'sales',167);

insert into employee (employee_id,last_name,first_name,middle_initial,job_id,manager_id,hire_date,salary,department_id) values(7369,'smith','john','q',667,7902,'1984-12-17',800,20);
insert into employee values(7499,'allen','kevin','j',7698,670,'1985-02-20',1600,300,30);
insert into employee (employee_id,last_name,first_name,middle_initial,job_id,manager_id,hire_date,salary,department_id) values(7505,'doyle','jean','k',671,7839,'1985-04-04',2850,13);
insert into employee (employee_id,last_name,first_name,middle_initial,job_id,manager_id,hire_date,salary,department_id) values(7506,'dennis','lynn','s',671,7839,'1985-05-15',2750,23);
insert into employee (employee_id,last_name,first_name,middle_initial,job_id,manager_id,hire_date,salary,department_id) values(7507,'baker','leslie','d',671,7839,'1985-06-10',2200,14);
insert into employee values(7521,'ward','cynthia','d',7698,670,'1985-02-22',1250,500,30);
insert into employee values(7555,'peters','daniel','t',7505,670,'1985-03-31',1250,300,13);
insert into employee values(7557,'shaw','karen','p',7505,670,'1985-04-02',1250,1200,13);
insert into employee (employee_id,last_name,first_name,middle_initial,job_id,manager_id,hire_date,salary,department_id) values(7560,'duncan','sarah','s',670,7506,'1985-05-31',1250,23);
insert into employee values(7564,'lange','gregory','j',7506,670,'1985-06-01',1250,300,23);
insert into employee (employee_id,last_name,first_name,middle_initial,job_id,manager_id,hire_date,salary,department_id) values(7566,'jones','terry','m',671,7839,'1985-04-02',2975,20);
insert into employee (employee_id,last_name,first_name,middle_initial,job_id,manager_id,hire_date,salary,department_id) values(7569,'alberts','chris','l',671,7839,'1985-04-06',3000,12);
insert into employee values(7600,'porter','raymond','y',7505,670,'1985-04-15',1250,900,13);
insert into employee (employee_id,last_name,first_name,middle_initial,job_id,manager_id,hire_date,salary,department_id) values(7609,'lewis','richard','m',668,7507,'1985-04-16',1800,24);
insert into employee values(7654,'martin','kenneth','j',7698,670,'1985-09-28',1250,1400,30);
insert into employee (employee_id,last_name,first_name,middle_initial,job_id,manager_id,hire_date,salary,department_id) values(7676,'sommers','denise','d',668,7507,'1985-04-19',1850,34);
insert into employee (employee_id,last_name,first_name,middle_initial,job_id,manager_id,hire_date,salary,department_id) values(7698,'blake','marion','s',671,7839,'1985-05-01',2850,30);
insert into employee (employee_id,last_name,first_name,middle_initial,job_id,manager_id,hire_date,salary,department_id) values(7782,'clark','carol','f',671,7839,'1985-06-09',2450,10);
insert into employee (employee_id,last_name,first_name,middle_initial,job_id,manager_id,hire_date,salary,department_id) values(7788,'scott','donald','t',669,7566,'1986-12-09',3000,20);
insert into employee values(7789,'west','livia','n',7506,670,'1985-04-04',1500,1000,23);
insert into employee (employee_id,last_name,first_name,middle_initial,job_id,manager_id,hire_date,salary,department_id) values(7799,'fisher','matthew','g',669,7569,'1986-12-12',3000,12);
insert into employee values(7820,'ross','paul','s',7505,670,'1985-06-01',1300,800,43);
insert into employee (employee_id,last_name,first_name,middle_initial,job_id,hire_date,salary,department_id) values(7839,'king','francis','a',672,'1985-11-17',5000,10);
insert into employee values(7844,'turner','mary','a',7698,670,'1985-09-08',1500,0,30);
insert into employee (employee_id,last_name,first_name,middle_initial,job_id,manager_id,hire_date,salary,department_id) values(7876,'adams','diane','g',667,7788,'1987-01-12',1100,20);
insert into employee (employee_id,last_name,first_name,middle_initial,job_id,manager_id,hire_date,salary,department_id) values(7900,'james','fred','s',667,7698,'1985-12-03',950,30);
insert into employee (employee_id,last_name,first_name,middle_initial,job_id,manager_id,hire_date,salary,department_id) values(7902,'ford','jennifer','d',669,7566,'1985-12-03',3000,20);
insert into employee (employee_id,last_name,first_name,middle_initial,job_id,manager_id,hire_date,salary,department_id) values(7916,'roberts','grace','m',669,7569,'1987-01-04',2875,12);
insert into employee (employee_id,last_name,first_name,middle_initial,job_id,manager_id,hire_date,salary,department_id) values(7919,'douglas','michael','a',667,7799,'1987-01-04',800,12);
insert into employee (employee_id,last_name,first_name,middle_initial,job_id,manager_id,hire_date,salary,department_id) values(7934,'miller','barbara','m',667,7782,'1986-01-23',1300,10);
insert into employee (employee_id,last_name,first_name,middle_initial,job_id,manager_id,hire_date,salary,department_id) values(7950,'jensen','alice','b',667,7505,'1987-01-15',750,13);
insert into employee (employee_id,last_name,first_name,middle_initial,job_id,manager_id,hire_date,salary,department_id) values(7954,'murray','james','t',667,7506,'1987-01-16',750,23);

insert into item values(600,1,100861,42,1,42);
insert into item values(610,3,100890,58,1,58);
insert into item values(611,1,100861,45,1,45);
insert into item values(612,1,100860,30,100,3000);
insert into item values(601,1,200376,2.4,12,28.8);
insert into item values(601,2,100860,32,1,32);
insert into item values(602,1,100870,2.8,20,56);
insert into item values(604,1,100890,58,3,174);
insert into item values(604,2,100861,42,2,84);
insert into item values(604,3,100860,32,12,384);
insert into item values(603,1,100860,32,7,224);
insert into item values(610,1,100860,35,1,35);
insert into item values(610,2,100870,2.8,3,8.4);
insert into item values(613,4,200376,2.2,200,440);
insert into item values(614,1,100860,35,444,15540);
insert into item values(614,2,100870,2.8,1000,2800);
insert into item values(612,2,100861,40.5,20,810);
insert into item values(612,3,101863,10,150,1500);
insert into item values(620,1,100860,35,10,350);
insert into item values(620,2,200376,2.4,1000,2400);
insert into item values(620,3,102130,3.4,500,1700);
insert into item values(613,1,100871,5.6,100,560);
insert into item values(613,2,101860,24,200,4800);
insert into item values(613,3,200380,4,150,600);
insert into item values(619,3,102130,3.4,100,340);
insert into item values(617,1,100860,35,50,1750);
insert into item values(617,2,100861,45,100,4500);
insert into item values(614,3,100871,5.6,1000,5600);
insert into item values(616,1,100861,45,10,450);
insert into item values(616,2,100870,2.8,50,140);
insert into item values(616,3,100890,58,2,116);
insert into item values(616,4,102130,3.4,10,34);
insert into item values(616,5,200376,2.4,10,24);
insert into item values(619,1,200380,4,100,400);
insert into item values(619,2,200376,2.4,100,240);
insert into item values(615,1,100861,45,4,180);
insert into item values(607,1,100871,5.6,1,5.6);
insert into item values(615,2,100870,2.8,100,280);
insert into item values(617,3,100870,2.8,500,1400);
insert into item values(617,4,100871,5.6,500,2800);
insert into item values(617,5,100890,58,500,29000);
insert into item values(617,6,101860,24,100,2400);
insert into item values(617,7,101863,12.5,200,2500);
insert into item values(617,8,102130,3.4,100,340);
insert into item values(617,9,200376,2.4,200,480);
insert into item values(617,10,200380,4,300,1200);
insert into item values(609,2,100870,2.5,5,12.5);
insert into item values(609,3,100890,50,1,50);
insert into item values(618,1,100860,35,23,805);
insert into item values(618,2,100861,45,50,2250);
insert into item values(618,3,100870,2.8,10,28);
insert into item values(621,1,100861,45,10,450);
insert into item values(621,2,100870,2.8,100,280);
insert into item values(615,3,100871,5,50,250);
insert into item values(608,1,101860,24,1,24);
insert into item values(608,2,100871,5.6,2,11.2);
insert into item values(609,1,100861,40,1,40);
insert into item values(606,1,102130,3.4,1,3.4);
insert into item values(605,1,100861,45,100,4500);
insert into item values(605,2,100870,2.8,500,1400);
insert into item values(605,3,100890,58,5,290);
insert into item values(605,4,101860,24,50,1200);
insert into item values(605,5,101863,9.5,100,950);
insert into item values(605,6,102130,3.4,10,34);
insert into item values(612,4,100871,5.5,100,550);
insert into item values(619,4,100871,5.6,50,280);
insert into item values(509,1,105123,35,30,1050);
insert into item values(509,2,105124,9,10,90);
insert into item values(509,3,102136,3.4,10,34);
insert into item values(523,1,102136,3.4,10,34);
insert into item values(523,2,105123,37.7,30,1131);
insert into item values(549,1,105123,38,5,190);
insert into item values(549,2,105127,6,30,180);
insert into item values(549,3,105125,3,200,600);
insert into item values(549,4,105124,13,50,650);
insert into item values(507,1,105123,35.3,20,706);
insert into item values(507,2,105124,9,20,180);
insert into item values(516,1,105124,9,60,540);
insert into item values(516,2,102136,3.2,250,800);
insert into item values(516,3,105125,1.9,250,475);
insert into item values(553,1,105127,6,500,3000);
insert into item values(553,2,200376,1.75,800,1400);
insert into item values(526,1,105123,32,100,3200);
insert into item values(526,2,105124,9,500,4500);
insert into item values(543,1,105123,34,100,3400);
insert into item values(543,2,105124,10,500,5000);
insert into item values(555,1,105123,34,100,3400);
insert into item values(555,2,105124,10,500,5000);
insert into item values(555,3,102136,2.8,50,140);
insert into item values(559,1,105123,40,5,200);
insert into item values(559,2,105124,15,5,75);
insert into item values(559,3,105127,6,5,30);
insert into item values(559,4,102136,3.4,3,10.2);
insert into item values(559,5,200376,2.4,30,72);
insert into item values(528,1,105123,37.7,100,3770);
insert into item values(531,1,105124,11,100,1100);
insert into item values(531,2,102136,3,100,300);
insert into item values(558,1,105124,14,100,1400);
insert into item values(558,2,102136,3,100,300);
insert into item values(525,1,105123,37.7,10,377);
insert into item values(552,1,105123,40,10,400);
insert into item values(552,2,105124,15,10,150);
insert into item values(552,3,102136,3.4,1,3.4);
insert into item values(552,4,200376,2.4,1,2.4);
insert into item values(556,1,102136,3.4,25,85);
insert into item values(560,1,200376,2.4,30,72);
insert into item values(565,1,105123,37,100,3700);
insert into item values(565,2,105124,12,100,1200);
insert into item values(574,1,104350,41.8,25,1045);
insert into item values(574,2,200380,3.2,200,640);
insert into item values(576,1,104350,44,10,440);
insert into item values(576,2,104351,26,10,260);
insert into item values(576,3,104362,4.25,170,722.5);
insert into item values(576,4,200376,2.16,90,194.4);
insert into item values(576,5,200380,3.4,130,442);
insert into item values(503,1,104350,38,30,1140);
insert into item values(503,2,104351,23.6,10,236);
insert into item values(503,3,104352,50,10,500);
insert into item values(518,1,104350,38,25,950);
insert into item values(518,2,104351,23.6,20,472);
insert into item values(518,3,104360,36,20,720);
insert into item values(518,4,104362,4.25,170,722.5);
insert into item values(518,5,102134,3.4,20,68);
insert into item values(517,1,104352,50,15,750);
insert into item values(517,2,102134,3.4,10,34);
insert into item values(544,1,104350,44,15,660);
insert into item values(544,2,104351,26,15,390);
insert into item values(544,3,104352,58.3,10,583);
insert into item values(544,4,104361,50,10,500);
insert into item values(544,5,104362,4.5,50,225);
insert into item values(524,1,104350,42,10,420);
insert into item values(524,2,104351,23.56,35,824.6);
insert into item values(524,3,104362,4.25,150,637.5);
insert into item values(524,4,102134,3.23,30,96.9);
insert into item values(502,1,104352,50,10,500);
insert into item values(539,1,104351,26,20,520);
insert into item values(539,2,104360,39,20,780);
insert into item values(511,1,104351,23.6,15,354);
insert into item values(511,2,104362,4.5,50,225);
insert into item values(511,3,102134,3.4,20,68);
insert into item values(512,1,104360,36,10,360);
insert into item values(512,2,102134,3.4,20,68);
insert into item values(562,1,104351,24.7,25,617.5);
insert into item values(562,2,104352,58.3,15,874.5);
insert into item values(562,3,104362,4.25,130,552.5);
insert into item values(529,1,104350,39.89,30,1196.7);
insert into item values(529,2,102134,3.4,20,68);
insert into item values(563,1,104352,58.3,10,583);
insert into item values(563,2,200376,2.04,150,306);
insert into item values(568,1,104351,24.7,30,741);
insert into item values(568,2,200376,2.04,110,224.4);
insert into item values(568,3,200380,3.6,70,252);
insert into item values(504,1,104350,40,10,400);
insert into item values(504,2,104351,22.42,35,784.7);
insert into item values(504,3,104352,50,5,250);
insert into item values(538,1,104351,24.7,30,741);
insert into item values(535,1,104352,54,15,810);
insert into item values(578,1,104350,41.8,40,1672);
insert into item values(578,2,200376,2.04,190,387.6);
insert into item values(578,3,200380,3.6,60,216);
insert into item values(534,1,104350,42,10,420);
insert into item values(536,1,104350,39.89,40,1595.6);
insert into item values(536,2,104352,54,10,540);
insert into item values(572,1,104351,24.7,25,617.5);
insert into item values(572,2,104352,58.3,10,583);
insert into item values(514,1,104350,38,30,1140);
insert into item values(521,1,104350,40,20,800);
insert into item values(521,2,102134,3.23,30,96.9);
insert into item values(551,1,104350,44,10,440);
insert into item values(551,2,104361,50,5,250);
insert into item values(551,3,102134,3.4,20,68);
insert into item values(551,4,200376,1.92,200,384);
insert into item values(513,1,104350,40,15,600);
insert into item values(513,2,104351,23.6,20,472);
insert into item values(513,3,104362,4.25,100,425);
insert into item values(508,1,104360,36,20,720);
insert into item values(508,2,104362,4.5,80,360);
insert into item values(515,1,104350,40,20,800);
insert into item values(515,2,104351,22.42,25,560.5);
insert into item values(515,3,102134,3.4,20,68);
insert into item values(542,1,104350,41.8,25,1045);
insert into item values(542,2,104360,39,20,780);
insert into item values(542,3,104361,50,11,550);
insert into item values(542,4,102134,3.4,10,34);
insert into item values(573,1,103120,22.5,50,1125);
insert into item values(573,2,103131,4.04,50,202);
insert into item values(573,3,103141,20,15,300);
insert into item values(566,1,103120,23.75,40,950);
insert into item values(566,2,103121,27,50,1350);
insert into item values(566,3,103130,3.77,60,226.2);
insert into item values(566,4,103131,3.9,170,663);
insert into item values(566,5,103141,20,10,200);
insert into item values(520,1,103130,4,10,40);
insert into item values(520,2,103131,3.77,80,301.6);
insert into item values(519,1,103130,3.5,110,385);
insert into item values(519,2,103140,19,30,570);
insert into item values(575,1,103140,19,30,570);
insert into item values(575,2,200380,3.8,30,114);
insert into item values(547,1,103130,3.77,80,301.6);
insert into item values(547,2,103131,4.04,70,282.8);
insert into item values(547,3,103140,20,15,300);
insert into item values(547,4,103141,20,5,100);
insert into item values(540,1,103130,3.98,40,159.2);
insert into item values(540,2,103131,3.9,180,702);
insert into item values(567,1,103140,20,10,200);
insert into item values(570,1,103131,4.04,90,363.6);
insert into item values(570,2,103140,20,15,300);
insert into item values(571,1,103131,4.04,70,282.8);
insert into item values(571,2,103140,19,25,475);
insert into item values(571,3,102132,3.4,15,51);
insert into item values(571,4,200376,2.16,80,172.8);
insert into item values(571,5,200380,3.8,30,114);
insert into item values(541,1,103140,20,10,200);
insert into item values(541,2,103141,20,10,200);
insert into item values(532,1,103120,21.59,60,1295.4);
insert into item values(527,1,103120,21.59,60,1295.4);
insert into item values(527,2,103121,27.35,40,1094);
insert into item values(527,3,103140,19,35,665);
insert into item values(501,1,103130,3.6,60,216);
insert into item values(564,1,103130,3.77,80,301.6);
insert into item values(564,2,103131,3.9,120,468);
insert into item values(564,3,102132,3.23,40,129.2);
insert into item values(537,1,103130,3.6,160,576);
insert into item values(537,2,102132,3.23,30,96.9);
insert into item values(522,1,103120,21.59,80,1727.2);
insert into item values(522,2,103121,28.8,10,288);
insert into item values(522,3,103131,4.04,90,363.6);
insert into item values(522,4,103141,20,10,200);
insert into item values(554,1,103131,4.04,70,282.8);
insert into item values(569,1,103120,22.5,50,1125);
insert into item values(569,2,103130,3.6,180,648);
insert into item values(569,3,103141,20,15,300);
insert into item values(550,1,103120,22.5,60,1350);
insert into item values(550,2,103140,19,45,855);
insert into item values(550,3,103141,20,5,100);
insert into item values(550,4,102132,3.4,15,51);
insert into item values(548,1,103140,19,30,570);
insert into item values(548,2,102132,3.23,30,96.9);
insert into item values(505,1,103130,3.5,100,350);
insert into item values(505,2,103140,20,15,300);
insert into item values(577,1,103121,30,20,600);
insert into item values(577,2,103131,3.9,150,585);
insert into item values(577,3,102132,3.23,25,80.75);
insert into item values(533,1,103121,27.35,30,820.5);
insert into item values(533,2,103130,3.77,80,301.6);
insert into item values(561,1,103120,22.5,80,1800);
insert into item values(561,2,103130,3.77,70,263.9);
insert into item values(561,3,103141,20,15,300);
insert into item values(561,4,200376,2.16,90,194.4);
insert into item values(506,1,103120,20.88,80,1670.4);
insert into item values(506,2,103130,3.5,180,630);
insert into item values(506,3,103141,20,15,300);
insert into item values(530,1,103121,25.91,50,1295.5);
insert into item values(530,2,103130,3.6,200,720);
insert into item values(530,3,103140,19,40,760);
insert into item values(530,4,103141,20,10,200);
insert into item values(530,5,102132,3.4,15,51);
insert into item values(545,1,103140,19,25,475);
insert into item values(557,1,103120,23.75,40,950);
insert into item values(557,2,103121,30,10,300);
insert into item values(557,3,103140,19,35,665);
insert into item values(557,4,200376,2.16,80,172.8);
insert into item values(557,5,200380,3.4,110,374);
insert into item values(546,1,103120,22.5,50,1125);
insert into item values(546,2,103121,30,20,600);
insert into item values(546,3,103130,3.6,120,432);
insert into item values(546,4,103131,3.9,140,546);
insert into item values(546,5,103140,19,40,760);
insert into item values(546,6,103141,20,10,200);
insert into item values(510,1,103120,20.88,60,1252.8);
insert into item values(510,2,103131,4.19,20,83.8);

insert into job values(667,'clerk');
insert into job values(668,'staff');
insert into job values(669,'analyst');
insert into job values(670,'salesperson');
insert into job values(671,'manager');
insert into job values(672,'president');

insert into location values(122,'new york');
insert into location values(124,'dallas');
insert into location values(123,'chicago');
insert into location values(167,'boston');

insert into price values(100871,4.8,3.2,'1989-01-01','1989-12-01');
insert into price (product_id,list_price,min_price,start_date) values(100890,58,46.4,'1989-01-01');
insert into price values(100890,54,40.5,'1988-06-01','1988-12-31');
insert into price (product_id,list_price,min_price,start_date) values(100860,35,28,'1990-06-01');
insert into price values(100860,32,25.6,'1990-01-01','1990-05-31');
insert into price values(100860,30,24,'1989-01-01','1989-12-31');
insert into price (product_id,list_price,min_price,start_date) values(100861,45,36,'1990-06-01');
insert into price values(100861,42,33.6,'1990-01-01','1990-05-31');
insert into price values(100861,39,31.2,'1989-01-01','1989-12-31');
insert into price (product_id,list_price,min_price,start_date) values(100870,2.8,2.4,'1990-01-01');
insert into price values(100870,2.4,1.9,'1989-01-01','1989-12-01');
insert into price (product_id,list_price,min_price,start_date) values(100871,5.6,4.8,'1990-01-01');
insert into price (product_id,list_price,min_price,start_date) values(101860,24,18,'1989-02-15');
insert into price (product_id,list_price,min_price,start_date) values(101863,12.5,9.4,'1989-02-15');
insert into price (product_id,list_price,min_price,start_date) values(102130,3.4,2.8,'1989-08-18');
insert into price (product_id,list_price,min_price,start_date) values(200376,2.4,1.75,'1990-11-15');
insert into price (product_id,list_price,min_price,start_date) values(200380,4,3.2,'1990-11-15');
insert into price values(103120,23.2,18.6,'1989-01-01','1989-12-31');
insert into price values(103120,24,19.2,'1990-01-01','1990-05-31');
insert into price (product_id,list_price,min_price,start_date) values(103120,25,20,'1990-06-01');
insert into price values(103121,27.8,22.3,'1989-01-01','1989-12-31');
insert into price values(103121,28.8,23,'1990-01-01','1990-05-31');
insert into price (product_id,list_price,min_price,start_date) values(103121,30,24,'1990-06-01');
insert into price values(103130,4,3.5,'1989-01-01','1989-12-31');
insert into price (product_id,list_price,min_price,start_date) values(103130,4.2,3.6,'1990-01-01');
insert into price values(103131,4.2,3.6,'1989-01-01','1989-12-31');
insert into price (product_id,list_price,min_price,start_date) values(103131,4.5,3.9,'1990-01-01');
insert into price (product_id,list_price,min_price,start_date) values(103140,20,15,'1989-02-15');
insert into price (product_id,list_price,min_price,start_date) values(103141,20,15,'1989-02-15');
insert into price (product_id,list_price,min_price,start_date) values(102132,3.4,2.8,'1989-08-18');
insert into price values(104350,40,32,'1989-01-01','1989-12-31');
insert into price values(104350,42,33.6,'1990-01-01','1990-05-31');
insert into price (product_id,list_price,min_price,start_date) values(104350,44,35.3,'1990-06-01');
insert into price values(104351,23.6,18.9,'1989-01-01','1989-12-31');
insert into price values(104351,24.8,19.8,'1990-01-01','1990-05-31');
insert into price (product_id,list_price,min_price,start_date) values(104351,26,20.8,'1990-06-01');
insert into price values(104352,50,35,'1989-01-01','1989-12-31');
insert into price values(104352,54,37.8,'1990-01-01','1990-05-31');
insert into price (product_id,list_price,min_price,start_date) values(104352,58.3,40.8,'1990-06-01');
insert into price values(104360,36,29.5,'1989-01-01','1989-12-31');
insert into price (product_id,list_price,min_price,start_date) values(104360,39,32,'1990-01-01');
insert into price values(104361,47,33,'1989-01-01','1989-12-31');
insert into price (product_id,list_price,min_price,start_date) values(104361,50,35,'1990-01-01');
insert into price (product_id,list_price,min_price,start_date) values(104362,5,4,'1989-02-15');
insert into price (product_id,list_price,min_price,start_date) values(102134,3.4,2.8,'1989-08-18');
insert into price values(105123,36.3,29,'1989-01-01','1989-12-31');
insert into price values(105123,37.7,32,'1990-01-01','1990-05-31');
insert into price (product_id,list_price,min_price,start_date) values(105123,40,34,'1990-06-01');
insert into price values(105124,10,7.6,'1989-01-01','1989-12-31');
insert into price values(105124,12,9,'1990-01-01','1990-05-31');
insert into price (product_id,list_price,min_price,start_date) values(105124,15,10,'1990-06-01');
insert into price values(105125,2,1.7,'1989-01-01','1989-12-31');
insert into price (product_id,list_price,min_price,start_date) values(105125,3,2.6,'1990-01-01');
insert into price values(105126,5,4.3,'1989-01-01','1989-12-31');
insert into price (product_id,list_price,min_price,start_date) values(105126,6,5,'1990-01-01');
insert into price (product_id,list_price,min_price,start_date) values(105127,6,5,'1990-11-15');
insert into price (product_id,list_price,min_price,start_date) values(105128,10,8,'1990-11-15');
insert into price (product_id,list_price,min_price,start_date) values(102136,3.4,2.8,'1989-08-18');

insert into product values(100860,'ace tennis racket i');
insert into product values(100861,'ace tennis racket ii');
insert into product values(100870,'ace tennis balls-3 pack');
insert into product values(100871,'ace tennis balls-6 pack');
insert into product values(100890,'ace tennis net');
insert into product values(101860,'sp tennis racket');
insert into product values(101863,'sp junior racket');
insert into product values(102130,'rh: "guide to tennis"');
insert into product values(200376,'sb energy bar-6 pack');
insert into product values(200380,'sb vita snack-6 pack');
insert into product values(103120,'wiff softball bat i');
insert into product values(103121,'wiff softball bat ii');
insert into product values(103130,'wiff softball, small');
insert into product values(103131,'wiff softball, large');
insert into product values(103140,'wiff softball mitt (lh)');
insert into product values(103141,'wiff softball mitt (rh)');
insert into product values(102132,'rh: "guide to softball"');
insert into product values(104350,'dunk basketball indoor');
insert into product values(104351,'dunk basketball outdoor');
insert into product values(104352,'dunk basketball professional');
insert into product values(104360,'dunk hoop');
insert into product values(104361,'dunk hoop w/fiberglass board');
insert into product values(104362,'dunk nets - rainbow');
insert into product values(102134,'rh: "guide to basketball"');
insert into product values(105123,'yellow jersey bicycle helmet');
insert into product values(105124,'yellow jersey bicycle gloves');
insert into product values(105125,'yellow jersey water bottle');
insert into product values(105126,'yellow jersey bottle cage');
insert into product values(105127,'yellow jersey frame pump');
insert into product values(105128,'yellow jersey saddle pack');
insert into product values(102136,'rh: "guide to cycling"');

insert into sales_order values(610,'1991-01-07',101,'1991-01-08',101.4);
insert into sales_order values(611,'1991-01-11',102,'1991-01-11',45);
insert into sales_order values(612,'1991-01-15',104,'1991-01-20',5860);
insert into sales_order values(601,'1990-05-01',106,'1990-05-30',60.8);
insert into sales_order values(602,'1990-06-05',102,'1990-06-20',56);
insert into sales_order values(600,'1990-05-01',103,'1990-05-29',42);
insert into sales_order values(604,'1990-06-15',106,'1990-06-30',642);
insert into sales_order values(605,'1990-07-14',106,'1990-07-30',8374);
insert into sales_order values(606,'1990-07-14',100,'1990-07-30',3.4);
insert into sales_order values(609,'1990-08-01',100,'1990-08-15',102.5);
insert into sales_order values(607,'1990-07-18',104,'1990-07-18',5.6);
insert into sales_order values(608,'1990-07-25',104,'1990-07-25',35.2);
insert into sales_order values(603,'1990-06-05',102,'1990-06-05',224);
insert into sales_order values(620,'1991-03-12',100,'1991-03-12',4450);
insert into sales_order values(613,'1991-02-01',108,'1991-02-01',6400);
insert into sales_order values(614,'1991-02-01',102,'1991-02-05',23940);
insert into sales_order values(616,'1991-02-03',103,'1991-02-10',764);
insert into sales_order values(619,'1991-02-22',104,'1991-03-04',1260);
insert into sales_order values(617,'1991-02-05',105,'1991-03-03',46370);
insert into sales_order values(615,'1991-02-01',107,'1991-02-06',710);
insert into sales_order values(618,'1991-02-15',102,'1991-03-06',3083);
insert into sales_order values(621,'1991-03-15',100,'1991-04-01',730);
insert into sales_order values(509,'1989-06-04',226,'1989-06-10',1174);
insert into sales_order values(523,'1990-02-13',226,'1990-02-13',1165);
insert into sales_order values(549,'1990-12-27',226,'1991-01-14',1620);
insert into sales_order values(507,'1989-05-26',228,'1989-05-27',886);
insert into sales_order values(516,'1989-09-30',228,'1989-10-03',1815);
insert into sales_order values(553,'1991-02-02',228,'1991-02-13',4400);
insert into sales_order values(526,'1990-03-04',221,'1990-03-07',7700);
insert into sales_order values(543,'1990-09-04',221,'1990-09-07',8400);
insert into sales_order values(555,'1991-03-04',221,'1991-03-07',8540);
insert into sales_order values(559,'1990-11-16',222,'1991-04-23',387.2);
insert into sales_order values(528,'1990-03-24',224,'1990-03-24',3770);
insert into sales_order values(531,'1990-03-31',224,'1990-04-02',1400);
insert into sales_order values(558,'1991-03-31',224,'1991-04-02',1700);
insert into sales_order values(525,'1990-02-28',225,'1990-03-03',377);
insert into sales_order values(552,'1991-02-02',223,'1991-02-07',555.8);
insert into sales_order values(556,'1991-03-10',223,'1991-03-12',85);
insert into sales_order values(560,'1991-04-25',223,'1991-04-25',72);
insert into sales_order values(565,'1991-06-01',227,'1991-06-03',4900);
insert into sales_order values(574,'1991-10-10',201,'1991-10-12',1685);
insert into sales_order values(576,'1991-10-13',201,'1991-10-18',2058.9);
insert into sales_order values(503,'1989-03-25',201,'1989-04-06',1876);
insert into sales_order values(518,'1989-10-20',201,'1989-11-05',2932.5);
insert into sales_order values(517,'1989-10-23',201,'1989-11-07',784);
insert into sales_order values(544,'1990-09-11',202,'1990-09-15',2358);
insert into sales_order values(524,'1990-02-22',202,'1990-03-04',1979);
insert into sales_order values(502,'1989-02-10',202,'1989-02-23',500);
insert into sales_order values(539,'1990-06-26',202,'1990-07-03',1300);
insert into sales_order values(511,'1989-08-17',202,'1989-08-21',647);
insert into sales_order values(512,'1989-08-28',203,'1989-09-13',428);
insert into sales_order values(562,'1991-05-04',203,'1991-05-19',2044.5);
insert into sales_order values(529,'1990-04-02',203,'1990-04-05',1264.7);
insert into sales_order values(563,'1991-05-25',204,'1991-05-26',889);
insert into sales_order values(568,'1991-07-13',204,'1991-07-21',1217.4);
insert into sales_order values(504,'1989-04-11',204,'1989-04-12',1434.7);
insert into sales_order values(538,'1990-06-23',204,'1990-06-26',741);
insert into sales_order values(535,'1990-05-28',204,'1990-06-09',810);
insert into sales_order values(578,'1991-11-19',204,'1991-12-04',2275.6);
insert into sales_order values(534,'1990-05-11',206,'1990-05-15',420);
insert into sales_order values(536,'1990-05-21',206,'1990-06-06',2135.6);
insert into sales_order values(572,'1991-08-19',206,'1991-08-24',1200.5);
insert into sales_order values(514,'1989-09-05',207,'1989-09-16',1140);
insert into sales_order values(521,'1989-11-20',207,'1989-11-23',896.9);
insert into sales_order values(551,'1991-01-22',208,'1991-02-06',1142);
insert into sales_order values(513,'1989-09-06',208,'1989-09-14',1497);
insert into sales_order values(508,'1989-05-26',208,'1989-06-08',1080);
insert into sales_order values(515,'1989-09-19',208,'1989-09-26',1428.5);
insert into sales_order values(542,'1990-08-11',208,'1990-08-23',2409);
insert into sales_order values(573,'1991-10-10',201,'1991-10-12',1627);
insert into sales_order values(566,'1991-06-09',201,'1991-06-12',3389.2);
insert into sales_order values(520,'1989-11-16',201,'1989-11-19',341.6);
insert into sales_order values(519,'1989-10-20',201,'1989-11-05',955);
insert into sales_order values(575,'1991-10-04',201,'1991-10-17',684);
insert into sales_order values(547,'1990-10-16',202,'1990-10-27',984.4);
insert into sales_order values(540,'1990-07-15',202,'1990-07-17',861.2);
insert into sales_order values(567,'1991-07-05',202,'1991-07-07',200);
insert into sales_order values(570,'1991-07-17',202,'1991-07-24',663.6);
insert into sales_order values(571,'1991-08-02',202,'1991-08-12',1095.6);
insert into sales_order values(541,'1990-08-08',203,'1990-08-18',400);
insert into sales_order values(532,'1990-04-08',203,'1990-04-21',1295.4);
insert into sales_order values(527,'1990-02-27',204,'1990-03-14',3054.4);
insert into sales_order values(501,'1989-01-06',204,'1989-01-11',216);
insert into sales_order values(564,'1991-05-25',204,'1991-05-26',898.8);
insert into sales_order values(537,'1990-06-14',204,'1990-06-26',672.9);
insert into sales_order values(522,'1990-01-07',204,'1990-01-10',2578.8);
insert into sales_order values(554,'1991-02-18',204,'1991-02-22',282.8);
insert into sales_order values(569,'1991-07-16',205,'1991-07-23',2073);
insert into sales_order values(550,'1991-01-27',205,'1991-02-07',2356);
insert into sales_order values(548,'1990-11-26',205,'1990-12-12',666.9);
insert into sales_order values(505,'1989-04-07',206,'1989-04-22',650);
insert into sales_order values(577,'1991-10-06',206,'1991-10-20',1265.75);
insert into sales_order values(533,'1990-04-28',206,'1990-05-02',1122.1);
insert into sales_order values(561,'1991-04-20',207,'1991-05-07',2558.3);
insert into sales_order values(506,'1989-04-27',208,'1989-05-10',2600.4);
insert into sales_order values(530,'1990-04-03',208,'1990-04-07',3026.5);
insert into sales_order values(545,'1990-10-06',208,'1990-10-13',475);
insert into sales_order values(557,'1991-03-08',208,'1991-03-12',2461.8);
insert into sales_order values(546,'1990-10-17',208,'1990-10-23',3663);
insert into sales_order values(510,'1989-07-18',208,'1989-07-21',1336.6);

alter table price add 
	foreign key (product_id) 
	references product (product_id);

alter table item add
	foreign key (product_id)
	references product (product_id);

alter table item add
	foreign key (order_id)
	references sales_order (order_id);

alter table sales_order add
	foreign key (customer_id)
	references customer(customer_id);

alter table customer add
	foreign key (salesperson_id)
	references employee(employee_id);

alter table employee add
	foreign key (manager_id)
	references employee(employee_id);

alter table employee add
	foreign key (job_id)
	references job(job_id);

alter table employee add 
	foreign key (department_id)
	references department(department_id);

alter table department add
	foreign key (location_id)
	references location(location_id);

