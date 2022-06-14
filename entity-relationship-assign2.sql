-- creating tables 
create table faculty(
    fid int primary key not null auto_increment,
    fname varchar(40) not null,
    fdept varchar(40) not null,
    cid int not null
);

create table course(
    cid int primary key not null auto_increment,
    cname varchar(40) not null,
    cdept varchar(40) not null,
    fid int not null
);

create table student(
    sid int primary key not null auto_increment,
    sname varchar(40) not null,
    sdept varchar(40) not null,
    cid int not null
);

-- inserting values 
insert into faculty values
(1,'Amy','MCA',1);
insert into faculty values
(2,'Rakesh','MCA',2);
insert into course values
(1,'Js','MCA',1);
insert into course values
(2,'Java','MCA',2);
insert into student values
(1,'Amir','MCA',1);
insert into student values
(2,'Amit','MCA',2);

-- adding foreign keys 
alter table faculty
add foreign key (cid) references course (cid)
on delete cascade;

alter table course
add foreign key (fid) references faculty (fid)
on delete cascade;

alter table student
add foreign key (cid) references course (cid)
on delete cascade;

-- select statements 
select * from faculty;
select * from course;
select * from student;

-- subquery 
select cname from course
where cid = (select cid from student where sid=1);