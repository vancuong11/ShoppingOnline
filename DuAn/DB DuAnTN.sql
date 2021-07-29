create table Categories(
	id int identity(1,1) primary key,
	name nvarchar(30) not null
)

create table Accounts(
	username nvarchar(30) primary key,
	password nvarchar(30) not null,
	fullname nvarchar(30) not null,
	email nvarchar(30) not null,
	actived bit,
	role bit,
	mhpw nvarchar(max)
)

create table Products(
	id int identity(1,1) primary key,
	name nvarchar(50) not null,
	price float,
	createDate date,
	available bit,
	categoryid int references Categories(id)	
)

create table Oders(
	id int identity(1,1) primary key,
	username nvarchar(30) references Accounts(username) not null,
	createDate date,
	address nvarchar(50) not null,
	phone int 
)

create table OderDetails(
	id int identity(1,1) primary key,
	oderid int references Oders(id),
	productid int references Products(id),
	price float,
	quantity int
)