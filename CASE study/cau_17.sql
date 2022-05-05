
 UPDATE loai_khach SET ten_loai_khach = 'Diamond' where loai_khach.ma_loai_khach in
 (SELECT khach_hang.ma_khach_hang FROM Case_study.khach_hang join hop_dong on
khach_hang.ma_khach_hang = hop_dong.ma_khach_hang where  year(ngay_lam_hop_dong) = "2021" and hop_dong.ma_khach_hang in 
(SELECT hop_dong.ma_hop_dong FROM Case_study.hop_dong join
 hop_dong_chi_tiet on hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong where 
 hop_dong_chi_tiet.ma_hop_dong in 
 (select hop_dong_chi_tiet.ma_hop_dong from hop_dong_chi_tiet join dich_vu_di_kem on
 hop_dong_chi_tiet.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem where 
 hop_dong_chi_tiet.so_luong * dich_vu_di_kem.gia >= 10000000)));
 select ngay_lam_hop_dong from hop_dong where year(ngay_lam_hop_dong) = "2021";