use case_study;
SELECT ho_ten,ma_nhan_vien
 FROM case_study.nhan_vien where LEFT(ho_ten, 1) = 'h' || 
 LEFT(ho_ten, 1) = 't'|| LEFT(ho_ten, 1) = 'k';