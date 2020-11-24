create database fashi
use fashi
create table product_group(
	id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	prd_code varchar(255) NOT NULL,
	prd_name varchar(255) NOT NULL,
	parent_id int NOT NULL default(0),
	group_level int NOT NULL
)

insert into product_group(prd_code, prd_name, parent_id, group_level) values 
('nam','Nam', 0, 0),
('nu', 'Nữ', 0, 0)

insert into product_group(prd_code, prd_name, parent_id, group_level) values 
('quan', 'Quần', 1, 1),
('ao', 'ao', 1, 1),
('quan', 'Quần', 2, 1),
('ao', 'ao', 2, 1),
('quan-kaki', 'Quần Kaki', 3, 2),
('ao-somi', 'Áo sơ mi', 4, 2),
('quan-tay', 'Quần Tây', 3, 2),
('ao-thun', 'Áo thun', 4, 2),
('quan-kaki', 'Quần Kaki', 5, 2),
('ao-somi', 'Áo sơ mi', 6, 2),
('quan-tay', 'Quần Tây', 5, 2),
('ao-thun', 'Áo thun', 6, 2)

select*
from product_group p1 join product_group p2 
						on p1.parent_id = p2.id
						join product_group p3 
						on p2.parent_id = p3.id