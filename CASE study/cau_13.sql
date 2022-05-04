
SELECT dich_vu_di_kem.ma_dich_vu_di_kem,ten_loai_dich_vu_di_kem, so_luong FROM Case_study.dich_vu_di_kem join hop_dong_chi_tiet on
dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem where
hop_dong_chi_tiet.so_luong in (select max(so_luong) from hop_dong_chi_tiet ) group by 
dich_vu_di_kem.ma_dich_vu_di_kem;
 

