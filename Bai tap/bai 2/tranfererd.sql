use tranfer_ERD;
create table Nhacc 
(
MaNCC int primary key,
TenNCC varchar(50),
DiaChi varchar(50),
SDT varchar(20)
);
create table PHIEUXUAT
(
SOPX int primary key,
NgayXuat datetime
);
create table DonNH
(
SoDH int primary key,
NgayDH datetime,
MaNCC int ,
FOREIGN KEY (MaNCC) REFERENCES Nhacc (MaNCC)
);
create table VATVTU
(
MAVTU int primary key,
TENVTU varchar(30)
);
create table VATVTU_DonNH
(
MAVTU int,
SoDH int,
primary key (MAVTU, SoDH),
FOREIGN KEY (MAVTU) REFERENCES VATVTU(MAVTU),
FOREIGN KEY (SoDH) REFERENCES DonNH(SoDH)
);
create table PHIEUXUAT_VATVTU
(
SOPX int,
MAVTU int,
DGXUAT int,
SLXUAT int,
primary key (SOPX, MAVTU),
FOREIGN KEY (SOPX) REFERENCES PHIEUXUAT(SOPX),
FOREIGN KEY (MAVTU) REFERENCES VATVTU(MAVTU)
);
create table PHIEUNHAP
(
SoPN int primary key,
NgayNhap datetime
);
create table PHIEUNHAP_VATVTU
(
SoPN int,
MAVTU int,
DGNHAP int,
SLNHAP int,
primary key (SoPN, MAVTU),
FOREIGN KEY (SoPN) REFERENCES PHIEUNHAP(SoPN),
FOREIGN KEY (MAVTU) REFERENCES VATVTU(MAVTU)
);