create database QuanLyDiemThi;
use QuanLyDiemThi;
create table HocSinh(
	maHS varchar(50) primary key,
    tenHS varchar(50),
    ngaySinh datetime,
    lop varchar(50),
    gt varchar(50)
);
create table MonHoc(
	maMH varchar(50) primary key,
    tenMH varchar(50)
);
create table BangDiem(
	maHS varchar(50),
    maMH varchar(50),
    DiemThi int,
    NgayKT datetime,
    primary key (maHS, maMH),
    foreign key (maHS) references HocSinh(maHS),
    foreign key (maMH) references MonHoc(maMH)
);
create table GiaoVien(
	maGV varchar(50),
    tenGV varchar(50),
    sdt varchar(10)
);
alter table MonHoc add maGV varchar(50);
alter table MonHoc add constraint pk_maGV 
foreign key (maGV) references GiaoVien(maGV);



