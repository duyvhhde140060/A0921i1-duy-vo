use case_study;
create table vi_tri
(
ma_vi_tri int PRIMARY KEY,
ten_vi_tri varChar(45)
);
create table trinh_do
(
ma_trinh_do int primary key,
ten_trinh_do varChar(45)
);
create table bo_phan
(
ma_bo_phan int primary key,
ten_bo_phan varChar(45)
);
create table loai_khach
(
ma_loai_khach int primary key,
ten_loai_khach varChar(45)
);
create table loai_dich_vu
(
ma_dich_vu int primary key,
ten_loai_dich_vu varChar(45)
);
create table kieu_thue
(
ma_kieu_thue int primary key,
ten_kieu_thue varChar(45)
);
create table dich_vu_di_kem
(
ma_dich_vu_di_kem int primary key,
ten_loai_dich_vu_di_kem varChar(45),
gia double,
don_vi varChar(45),
trang_thai varChar(45)
);
create table nhan_vien
(
ma_nhan_vien int primary key,
ho_ten varChar(45),
ngay_sinh date,
so_cmnd varChar(45),
luong double,
so_dien_thoai varChar(45),
email varChar(45),
ma_vi_tri int,
ma_trinh_do int,
ma_bo_phan int,
FOREIGN KEY (ma_vi_tri) REFERENCES vi_tri (ma_vi_tri),
FOREIGN KEY (ma_trinh_do) REFERENCES trinh_do(ma_trinh_do),
FOREIGN KEY (ma_bo_phan) REFERENCES bo_phan(ma_bo_phan)
);
create table khach_hang
(
ma_khach_hang int primary key,
ma_loai_khach int,
foreign key (ma_loai_khach) REFERENCES loai_khach(ma_loai_khach),
ho_ten varChar(45),
ngay_sinh date,
gioi_tinh bit (1),
so_cmnd varChar(45),
so_dien_thoai varChar(45),
email varChar(45),
dia_chi varChar(45)
);
create table dich_vu
(
ma_dich_vu int primary key,
ten_dich_vu varChar(45),
dien_tich int,
chi_phi_thue double,
so_nguoi_toi_da int,
ma_kieu_thue int,
ma_loai_dich_vu int,
foreign key (ma_kieu_thue) references kieu_thue (ma_kieu_thue),
foreign key (ma_dich_vu) references loai_dich_vu (ma_dich_vu),
tieu_chuan_phong varChar(45),
mo_ta_tien_nghi_khac varChar(45),
dien_tich_ho_boi double,
so_tang int
);
create table hop_dong
(
ma_hop_dong int primary key,
ngay_lam_hop_dong datetime,
ngay_ket_thuc datetime,
tien_dat_coc double,
ma_nhan_vien int,
ma_khach_hang int,
ma_dich_vu int,
foreign key (ma_nhan_vien) references nhan_vien(ma_nhan_vien),
foreign key (ma_khach_hang) references khach_hang (ma_khach_hang),
foreign key (ma_dich_vu) references dich_vu (ma_dich_vu)

);
create table hop_dong_chi_tiet
(
ma_hop_dong_chi_tiet int primary key,
ma_hop_dong int,
ma_dich_vu_di_kem int,
foreign key (ma_hop_dong) references hop_dong(ma_hop_dong),
foreign key (ma_dich_vu_di_kem) references dich_vu_di_kem (ma_dich_vu_di_kem)
)





