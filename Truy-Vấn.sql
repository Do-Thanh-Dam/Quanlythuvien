--1. Liệt kê thông tin sách có số lượng lớn hơn 3 và có mã TL09
Select *
From Sach
Where SoLuong>3 and MaTL='TL09'

--2. Liệt kê Mã Thẻ Thư Viện,Họ Tên NV, Họ Tên DG của những nhân viên tên bắt đầu bằng chữ T làm thẻ thư viên cho các độc giả có tên bắt đầu bằng chữ N
Select MaThe,HoTenNV,HoTenDG
From TheThuVien T,NhanVien N, DocGia D
Where T.MaNV=N.MaNV and T.MaDG=D.MaDG 
Group By HoTenNV,HoTenDG, MaThe
Having HoTenNV Like 'T%' and HoTenDG Like 'N%'

--3. Liệt kê tên,ngày xuất bản , tình trạng sách và của tác giả Adam Khoo và tác giả Dale Carnegie
Select TenSach,NgayXuatBan,Tinhtrang,HoTenTG
From Sach S, TacGia TG
Where S.MaTG=TG.MaTG and HoTenTG='Adam Khoo'
union
Select TenSach,NgayXuatBan,Tinhtrang,HoTenTG
From Sach S, TacGia TG
Where S.MaTG=TG.MaTG and HoTenTG='Dale Carnegie'

--4. Xuất ra số lượng nhà xuất bản trong từng quyển sách mà số nhà xuất bản > 2 theo thứ tự tăng dần
SELECT NhaXuatBan.TenNXB, COUNT(*) SoLuongSach
FROM Sach, NhaXuatBan
WHERE Sach.MaNXB = NhaXuatBan.MaNXB 
GROUP BY dbo.NhaXuatBan.TenNXB
HAVING COUNT(*) > 1
Order by SoLuongSach ASC

--5. Liệt kê theo thứ tự giảm dần các dầu sáchsách có số lượng lớn hơn 5 và xuất bản năm 2021
SELECT TenSach, MaSach
FROM Sach
WHERE SoLuong > 5 and year(NgayXuatBan) = '2021'
group by TenSach,MaSach
ORDER BY MaSach DESC

--6. Tìm tên các quyển sách được xuất bản bởi nhà xuất bản " Alphabooks" và đã có ít nhất 2 lần được mượn
Select TenSach 
From Sach, Muon, NhaXuatBan NXB 
Where Sach.MaSach=Muon.MaSach and NXB.MaNXB=Sach.MaNXB and TenNXB= 'Alphabooks' group by TenSach 
Having count (MaPM)>2;

--7. Liệt kê họ tên Nhân Viên làm cho ít nhất 3 độc giả
Select  HoTenNV, count (MaDG) SoTheThuVien
From TheThuVien TTV, NhanVien NV
Where TTV.MaNV = NV.MaNV 
Group by  HoTenNV
having count (MaDG)>3

