use case_study;
SELECT khach_hang.ma_khach_hang,khach_hang.ho_ten,count(hop_dong.ma_khach_hang) as "so lan dat phong" FROM
 case_study.khach_hang join loai_khach on 
 khach_hang.ma_loai_khach = loai_khach.ma_loai_khach
 join hop_dong on
khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
where loai_khach.ten_loai_khach = 'Diamond'
 group by hop_dong.ma_khach_hang order by
count(hop_dong.ma_khach_hang) asc ;


