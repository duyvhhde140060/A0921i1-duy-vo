use case_study;
SELECT khach_hang.ma_khach_hang,khach_hang.ho_ten,loai_khach.ten_loai_khach,
 hop_dong.ma_hop_dong, dich_vu.ten_dich_vu,hop_dong.ngay_lam_hop_dong,
 hop_dong.ngay_ket_thuc, dich_vu.chi_phi_thue + hop_dong_chi_tiet.so_luong * dich_vu_di_kem.gia as "gia"
FROM case_study.khach_hang join loai_khach on khach_hang.ma_loai_khach = loai_khach.ma_loai_khach join
hop_dong on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang join dich_vu on 
hop_dong.ma_dich_vu = dich_vu.ma_dich_vu join hop_dong_chi_tiet on
 hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong join dich_vu_di_kem on
 hop_dong_chi_tiet.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem;

