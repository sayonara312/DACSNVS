USE master
GO
--Tao CSDL
CREATE DATABASE WebBanCayCanh

Go
USE WebBanCayCanh
Go 


/****** Object:  Table LoaiSP ******/
Create table LOAISANPHAM
(
	MaLoaiSP varchar(10) not null primary key (MaLoaiSP),
	TenLoaiSP nvarchar(100) not null,
	
);

/****** Object:  Table SANPHAM ******/
CREATE TABLE SANPHAM(
	MaSP varchar(10) NOT NULL primary key (MaSP),
	MaLoaiSP varchar(10) NOT NULL,
	TenSP nvarchar(50) ,
	SoLuongSP int ,
	HinhAnh nvarchar(50) ,
	NhaCC nvarchar(50),
	TienSP int ,
	NgayCapNhat SMALLDATETIME,
	SoLuongBan INT CHECK(SoLuongBan>0),
	SoLanXem INT DEFAULT 0,
	Mota Ntext 
);

Create table BinhLuanSP
(
	MaBL int identity(1,1) not null primary key(MaBL),
	MaSP varchar(10) not null,
	NguoiBL nvarchar(50),
	NgayBL datetime,
	NoiDungBL ntext,
	
)

Create table MENU
(
	ParentID int  not null primary key (ParentID),
	TenMenu nvarchar(50) not null
)

Create table SUBMENU
(
	IDSub int not null primary key (IDSub),
	ParentID int not null ,
	TenSubMenu nvarchar(50)  not null,
	

)

Create table ADMIN
(
	MaTK int not null identity(1,1) primary key(MaTK),
	LoaiTK int not null,
	TaiKhoan varchar(20) not null,
	MatKhau varchar(20) not null
)

create table BLOG
(
	MaBlog int identity(1,1) not null primary key (MaBlog),
	HinhAnh nvarchar(50),
	TieuDe nvarchar(200),
	TTND nvarchar(200),
	NoiDung ntext,

	NgayDang datetime,
	NguoiDang nvarchar(30)

)
Create table BinhLuanBlog
(
	MaBLB int identity(1,1) primary key(MaBLB),
	MaBlog int not null,
	NguoiBL nvarchar(50),
	NgayBL datetime,
	NoiDungBL ntext,
	
)

alter table SUBMENU
add constraint FK_SUBMENU_MENU foreign key (ParentID) references MENU(ParentID) 

alter table SANPHAM
add constraint FK_SANPHAM_LOAISP  foreign key (MaLoaiSP) references LOAISANPHAM(MaLoaiSP)

alter table BinhLuanSP
add constraint FK_BinhLuan foreign key (MaSP) references SanPham(MaSP) on delete cascade 

alter table BinhLuanBlog
add constraint FK_BinhLuanBlog foreign key (MaBLog) references Blog(MaBlog) on delete cascade 




insert into ADMIN values(1,'admin','1')


insert into MENU values(1,N'Trang Chủ')
insert into MENU values(2,N'Giới thiệu')
insert into MENU values(3,N'Cây Cảnh')
insert into MENU values(4,N'Dịch vụ')
insert into MENU values(5,N'Blog - Tin tức')
insert into MENU values(6,N'Hỗ trợ - Liên hệ')


insert into SUBMENU values(1,3,N'Cây phong thủy')
insert into SUBMENU values(2,3,N'Cây trong nhà')
insert into SUBMENU values(3,3,N'Cây văn phòng')
insert into SUBMENU values(4,3,N'Cây dây leo')
insert into SUBMENU values(5,3,N'Cây để bàn')
insert into SUBMENU values(6,3,N'Cây sân vườn')
insert into SUBMENU values(7,3,N'Cây thủy sinh')
insert into SUBMENU values(8,3,N'Cây xương rồng')

insert into LOAISANPHAM values('LSP01',N'Cây phong thủy')
insert into LOAISANPHAM values('LSP02',N'Cây trong nhà')
insert into LOAISANPHAM values('LSP03',N'Cây văn phòng')
insert into LOAISANPHAM values('LSP04',N'Cây dây leo')
insert into LOAISANPHAM values('LSP05',N'Cây để bàn')
insert into LOAISANPHAM values('LSP06',N'Cây sân vườn')
insert into LOAISANPHAM values('LSP07',N'Cây thủy sinh')
insert into LOAISANPHAM values('LSP08',N'Cây xương rồng')


--Insert table SANPHAM
insert into SANPHAM values('SP01','LSP01',N'Bonsai',13,'kimngan.jpg',N'Trường An',123000,'2020/2/7',400,0,N'
Bonsai ( Hán-Việt: bồn tài, nghĩa là "cây con trồng trong chậu") là loại cây cảnh nhỏ có dáng cổ thụ trồng trong chậu cảnh.

Nghệ thuật bonsai có nguồn gốc từ Trung Quốc, sau đó nó được phổ biến sang Nhật Bản và Hàn Quốc khi họ phát hiện trên núi có các cây nhỏ mọc hoang dã giống cây cổ thụ, có sức sống mãnh liệt trong mọi điều kiện khó khăn, sau đó người ta đem nó về trồng trong chậu nhỏ và cắt tỉa, uốn sửa tạo dáng cho đẹp hơn.

Bonsai có vị trí đặc biệt trong cộng đồng cư dân sống tại Trung hoa

và những người Hoa sống ở Đài Loan, Thái Lan và Singapore. Những nghệ nhân bậc thầy về bonsai của Trung Quốc ngày nay vẫn tạo ra sự khác biệt giữa nghệ thuật bonsai và nghệ thuật bồn cảnh.

Nghệ thuật bồn cảnh xuất hiện từ thời kỳ đầu của nhà Hán (khoảng năm 206 TCN đến năm 220). Một trong những truyền thuyết của Trung Quốc cho rằng vào thời này, có vị hoàng đế đã tạo ra phong cảnh trong sân vườn của ông với núi đồi, thung lũng, sông hồ, cây cối. Nơi này miêu tả cho cảnh vật trong đế quốc của ông và ông có thể ngắm toàn bộ "vương quốc" thu nhỏ của mình qua khung cửa sổ. Phong cảnh nghệ thuật này chỉ mình ông sở hữu và cấm mọi người ngắm nhìn. Đây chính là truyền thuyết nói về nghệ thuật tạo hình cây cối, nhà cửa, con người, thú vật ở Trung Quốc.

Còn nói về bonsai, có truyền thuyết cho rằng vào triều đại nhà Tần (năm 221 TCN đến năm 226 TCN), Đào Uyên Minh (còn gọi là Đào Tiềm) là một nhà thơ nổi tiếng và là quan chức có vị trí cao trong xã hội. Ông đã mệt mỏi với công việc triều chính, về ở ẩn tại một nơi hoang vắng và thanh tĩnh. Tại đây ông bắt đầu trồng cây hoa cúc vào trong chậu. Đây là bước khởi đầu của việc trồng cây trong chậu.

Năm 1972, người ta phát hiện ra cây bonsai trong hầm mộ của hoàng tử Zhang - huai (đời nhà Đường, từ năm 618 đến năm 907).

Năm 1000, vào triều đại nhà Tống, có những bài thơ miêu tả bồn cảnh và nhiều tài liệu dạy cách tạo ra tác phẩm bonsai.

Vào triều đại nhà Nguyên (từ năm 1280 đến năm 1368), những vị bộ trưởng và thương gia người Nhật đã đưa những cây bonsai từ Trung Quốc về Nhật Bản, xem nó như là những món quà tặng.

Cuối triều đại nhà Minh, Chu Shun - sui, một vị quan Trung Quốc, vì không chịu được luật lệ hà khắc đã bỏ trốn sang Nhật. Khi đi ông đã mang theo toàn bộ tuyển tập cây cảnh. Ông đã góp phần quảng bá nghệ thuật cây cảnh ở Nhật Bản. Thời ấy Nhật Bản đã tạo ra một cách riêng trong việc trồng bonsai. Đây là một nghệ thuật dành cho giới quý tộc, đó là giới samurai và đến cuối thế kỷ mới trở thành sở thích của mọi tầng lớp trong xã hội Nhật Bản.

Vào triều đại nhà Thanh (từ năm 1644 đến năm 1911) bồn cảnh và bonsai trở thành sở thích của tất cả các tầng lớp trong xã hội Trung Quốc.

Năm 1879, người Nhật đã giới thiệu bonsai đến hội chợ thế giới tại Paris rồi tới London vào năm 1909.

Năm 1989, nghệ thuật bonsai đã phát triển đến giai đoạn phổ thông trên khắp thế giới.')
insert into SANPHAM values('SP02','LSP01',N'Mộc Lan',52,'moclan.jpg',N'Đức Thịnh',59000,'2020/2/18',999,0,N'
Cây hoa mộc lan theo phong thủy Phương Đông thì nó có tính phong thủy cao, cây mà trồng trước nhà mang lại nhiều vượng khí cho ngôi nhà, gia chủ có khả năng thăng tiến trong công việc…
Cây hoa mộc lan là cây cảnh rất đẹp, sai hoa. Cây có thể trồng trang trí tại vườn trước cửa nhà đều rất tốt cho phong thủy giúp gia đình bạn gặp nhiều may mắn

CÂY HOA MỘC LAN LÀ LOẠI CÂY GÌ ?
Hoa mộc lan là cây gì

Loài hoa mộc lan từ xa xưa đã gắn với truyền thuyết cô gái hiếu thuận cải trang thành nam nhi thay cha già tòng quân ra trận.

Giữa muôn ngàn hiểm nguy, sắc hoa tinh khôi ấy vẫn tươi đẹp, tên của người con gái ấy đặt dựa theo tên một loài hoa có thật: hoa mộc lan.

Hoa tượng trưng cho vẻ đẹp kiều diễm, mạnh mẽ, bình dị, niềm tin, đức hi sinh và lòng dũng cảm.

hoa moc lan no tai vuon
MỘT VÀI ĐẶC ĐIỂM CỦA CÂY MỘC LAN
Đặc điểm hoa mộc lan
Cây hoa mộc lanđược biết đến với nhiều tên gọi khác: cây mộc giáng hương, cây mộc hương, hoa một, bạch ngọc lan, hoa mộc niên… tuy nhiên những tên gọi đó cũng ít người dùng. Mộc lan có tên khoa học Magnoliaceae có nguồn gốc từ Pháp, Châu Âu, phổ biến ở các nước ôn đới và cận nhiệt đới.

Đây là loại cây bóng mát, thân gỗ với cành lá rắn chắc, sống lâu năm, chiều cao mộc lan có thể đạt tới 30m nếu hợp khí hậu, thổ nhưỡng.

Lá mộc lan hình bầu dục, thuôn dài, màu xanh đậm đầy sức sống, lá bóng ở mặt trên, mặt dưới có lông tơ mịn, dầy ,mọc so le, mép nguyên.

Hoa mộc lan rất to, đường kính lên tới 12-15cm, với hình dáng ngộ nghĩnh như hai bàn tay úp lại. Cánh hoa hình trứng, dày, bóng, mịn màng với 9-12 lớp. Hoa mộc lan lại rực rỡ nhiều màu sắc từ hồng, trắng, vàng, tím nhạt. Cánh hoa dầy khỏe mạnh nên hoa rất bền, hoa nở kéo dài từ đến cả tháng.

Hoa mộc lan không chỉ đẹp mà còn có hương thơm rất quyến rũ, thường dành để chế tạo nước hoa. Hoa thường mọc ở đầu cành, nách lá nên rất sai hoa, mỗi đợt hoa có hàng trăm bông chen chúc trên một cây nên trông cây càng thu hút.

Điểm nổi bật nữa là mộc lan rụng lá trước khi nở hoa nên trên cây như được thắp lên hàng trăm ngọn lửa bồng bềnh, rực rỡ trông như hoa giả được cắm lên cành . Nhị hoa cũng nhiều màu sắc.')
insert into SANPHAM values('SP03','LSP01',N'Ngọc Ngân',67,'ngocngan.jpg',N'Đức Thịnh',90000,'2020/3/4',300,0,'')
insert into SANPHAM values('SP04','LSP01',N'Kim Tiền',42,'kimtien.jpg',N'Đức Thịnh',89000,'2020/4/4',231,0,'')
insert into SANPHAM values('SP05','LSP01',N'Tài Lộc',12,'tailoc.jpg',N'Đức Thịnh',67000,'2020/3/4',500,0,'')
insert into SANPHAM values('SP06','LSP02',N'Dây Nhện',32,'daynhen.jpg',N'Trường An',97000,'2020/7/8',600,0,'')
insert into SANPHAM values('SP07','LSP02',N'Hương Đào',32,'huongdao.jpg',N'Trường An',127000,'2020/7/8',200,0,'')
insert into SANPHAM values('SP08','LSP02',N'Lan Y',32,'lany.jpg',N'Trường An',127000,'2020/3/4',310,0,'')
insert into SANPHAM values('SP09','LSP02',N'Lưỡi Hổ',32,'luoiho.jpg',N'Trường An',27000,'2020/3/4',120,0,'')
insert into SANPHAM values('SP10','LSP02',N'Tài Lộc',32,'tailoc.jpg',N'Trường An',47000,'2020/3/4',300,0,'')
insert into SANPHAM values('SP11','LSP03',N'Bao Thanh Thiên',32,'baothanhthien.jpg',N'Trường An',97000,'2020/3/4',450,0,'')
insert into SANPHAM values('SP12','LSP03',N'Kim Tiền',32,'kimtien.jpg',N'Trường An',97000,'2020/3/4',100,0,'')
insert into SANPHAM values('SP13','LSP03',N'Ngọc Bích',32,'ngocbich.jpg',N'Trường An',147000,'2020/3/4',390,0,'')
insert into SANPHAM values('SP14','LSP03',N'Tiểu Hồng Môn',32,'tieuhongmon.jpg',N'Trường An',67000,'2020/3/4',308,0,'')
insert into SANPHAM values('SP15','LSP03',N'Thiết Mọc Lan',32,'thietmoclan.jpg',N'Đức Thịnh',77000,'2020/3/4',301,0,'')
insert into SANPHAM values('SP16','LSP04',N'Hoa Hồng Leo',32,'hoahongleo.jpg',N'Đức Thịnh',77000,'2020/3/4',210,0,'')
insert into SANPHAM values('SP17','LSP04',N'Hoa Tử Đằng',32,'hoatudang.jpg',N'Đức Thịnh',77000,'2020/3/4',398,0,'')
insert into SANPHAM values('SP18','LSP04',N'Cúc Tần Ấn Độ',32,'cuctanando.jpg',N'Trường An',97000,'2020/3/4',398,0,'')
insert into SANPHAM values('SP19','LSP04',N'Hoa Hậu Biếc',32,'hoahaubiec.jpg',N'Trường An',97000,'2020/3/4',342,0,'')
insert into SANPHAM values('SP20','LSP04',N'Mống Cọp',32,'mongcop.jpg',N'Trường An',97000,'2020/3/4',420,0,'')
insert into SANPHAM values('SP21','LSP05',N'Kim Ngân',32,'kimngan.jpg',N'Gia Phát',97000,'2020/3/4',100,0,'')
insert into SANPHAM values('SP22','LSP05',N'Kim Tiền',32,'kimtien.jpg',N'Gia Phát',97000,'2020/3/4',200,0,'')
insert into SANPHAM values('SP23','LSP05',N'May Mắn',32,'mayman.jpg',N'Gia Phát',97000,'2020/3/4',300,0,'')
insert into SANPHAM values('SP24','LSP05',N'Ngọc Ngân',32,'ngocngan.jpg',N'Gia Phát',97000,'2020/3/4',450,0,'')
insert into SANPHAM values('SP25','LSP05',N'Phú Quý',32,'phuquy.jpg',N'Gia Phát',97000,'2020/3/4',600,0,'')
insert into SANPHAM values('SP26','LSP06',N'Nho',32,'caynho.jpg',N'Gia Phát',97000,'2020/3/4',100,0,'')
insert into SANPHAM values('SP27','LSP06',N'Hắc Mây',32,'hacmay.jpg',N'Gia Phát',97000,'2020/3/4',80,0,'')
insert into SANPHAM values('SP28','LSP06',N'Thủy Lập',32,'thuylap.jpg',N'Gia Phát',97000,'2020/3/4',100,0,'')
insert into SANPHAM values('SP29','LSP06',N'Tre Cảnh',32,'trecanh.jpg',N'Gia Phát',97000,'2020/3/4',180,0,'')
insert into SANPHAM values('SP30','LSP06',N'Xương Rống',32,'xuongrong.jpg',N'Gia Phát',97000,'2020/3/4',370,0,'')
insert into SANPHAM values('SP31','LSP07',N'Đế Vương Xanh',32,'devuongxanh.jpg',N'Gia Phát',97000,'2020/3/4',100,0,'')
insert into SANPHAM values('SP32','LSP07',N'Ngũ Gia',32,'ngugia.jpg',N'Gia Phát',97000,'2020/3/4',980,0,'')
insert into SANPHAM values('SP33','LSP07',N'Sen Đá Nâu',32,'sandanau.jpg',N'Gia Phát',97000,'2020/3/4',100,0,'')
insert into SANPHAM values('SP34','LSP07',N'Trúc Nhật',32,'trucnhat.jpg',N'Gia Phát',97000,'2020/3/4',300,0,'')
insert into SANPHAM values('SP35','LSP07',N'Van Thiên Thanh',32,'vanthienthanh.jpg',N'Gia Phát',97000,'2020/3/4',90,0,'')
insert into SANPHAM values('SP36','LSP08',N'Bánh Sinh Nhật',32,'banhsinhnhat.jpeg',N'Gia Phát',97000,'2020/3/4',9,0,'')
insert into SANPHAM values('SP37','LSP08',N'Bát Tiên',32,'battien.jpg',N'Lưu Thiện',54000,'2020/3/4',3,0,'')
insert into SANPHAM values('SP38','LSP08',N'Tai Thỏ',32,'taitho.jpg','Phú Thiên',24000,'2020/3/4',54,0,'')
insert into SANPHAM values('SP39','LSP08',N'Thanh Sơn',32,'thanhson.jpg',N'Lưu Thiện',54000,'2020/3/4',102,0,'')
insert into SANPHAM values('SP40','LSP08',N'Trứng Chim',32,'trungchim.jpg',N'Lưu Thiện',94000,'2020/3/4',65,0,'')





--Insert table BLOG
insert into BLOG values('kimngan.jpg',N'Thiết kế thi công cảnh quan cây xanh ban công nhà chung cư !',N'Việc thiết kế trang trí cảnh quan cây xanh ban công nhà chung cư đang trở nên rất phổ biến…',N'ND1','11/2/2020','Admin')
insert into BLOG values('xuongrong.jpg',N'Kỹ thuật trồng và chăm sóc cây mai vạn phúc luôn xanh tốt',N'Cây mai vạn phúc khá quen thuộc trong cuộc sống hàng ngày. Chúng thường được trồng thành bụi, khóm để…',N'ND2','11/2/2020','Admin')
insert into BLOG values('thanhson.jpg',N'Trang trí ban công bằng cây hoa sam nhật thật đẹp',N'Nhiều người đang tìm hiểu về cây hoa sam Nhật có hình dáng, đặc thù như thế nào? Hãy tham…',N'ND3','12/2/2020','Admin')
insert into BLOG values('sandanau.jpg',N'Vẽ đẹp của cây hoa sim tím như cái tên của bài hát',N'Cây hoa sim tím đã đi vào lòng người ngày thì thuở nao, các nhà thơ, nhạc sĩ đã lấy…',N'ND4','11/2/2020','Admin')
insert into BLOG values('kimtien.jpg',N'Hoa hồng trứng đang rất được săn đón hợp với ban công ngôi nhà ',N'Khi nói đến loài hoa hồng trứng thì chúng ta có thấy xa lạ với cái tên gọi này không?…',N'ND5','11/2/2020','Admin')
insert into BLOG values('taitho.jpg',N'Cây hoa ngũ sắc làm cảnh quan, trang trí sân vườn thật nổi bật',N'Thế giới Cây và Hoa đang là nơi bán cây hoa ngũ sắc làm cảnh quan uy tín nhất tại…',N'ND6','11/2/2020','Admin')
insert into BLOG values('kimngan.jpg',N'Cây mai hoàng yến nở vàng rực trong khu vườn nhà bạn',N'Bán cây mai hoàng yến đẹp sử dụng để trang trí cho mọi không gian, đang được thị trường ưa…',N'ND7','11/2/2020','Admin')
insert into BLOG values('ngugia.jpg',N'Cây hoa tử đằng loài cây dây leo nở hoa đẹp, cho mùa hè thêm mát',N'Nhắc đến hoa tử đằng thì người ta nhớ đến đất nước Nhật Bản, thế nhưng cây hoa tử đằng…',N'ND8','11/2/2020','Admin')
insert into BLOG values('phuquy.jpg',N'Hướng dẫn trồng và chăm sóc cây cà gai leo năng suất cao',N'Trên thực tế, chúng ta nghe đến cái tên cà gai leo rất nhiều. Cây cà gai leo là một…',N'ND9','11/2/2020','Admin')
insert into BLOG values('kimngan.jpg',N'Ý nghĩa và tác dụng tuyệt vời của cây cần thăng là gì ?',N'Cây cần thăng, tên khoa học là Feoniella lucida, là một loài cây lấy gỗ lớn, nếu sống trong tự…',N'ND10','11/2/2020','Admin')
insert into BLOG values('thuylap.jpg',N'Cây hạnh phúc – Làm xao xuyến trái tim bao người',N'Cuộc sống hiện đại khiến con người ta ngày càng bận rộn và luôn bị cuốn vào vòng xoay công…',N'ND11','11/2/2020','Admin')
insert into BLOG values('kimngan.jpg',N'Cây thiên môn đông dùng trang trí nội thất gia đình !',N'Vừa nhắc đến cái tên cây thiên môn đông thì chúng ta đã nghĩ ngay ra đây là một cây…',N'ND12','11/2/2020','Admin')

insert into BinhLuanSP values ('SP01',N'John Wick','3/12/2020',N'Where is my dog?')
insert into BinhLuanSP values('SP01',N'Tèo','5/12/2020',N'My Home')
insert into BinhLuanSP values ('SP02',N'John Wick','3/12/2020',N'Where is my dog?')


insert into BinhLuanBlog values (1,N'John Wick','3/12/2020',N'Where is my dog?')
insert into BinhLuanBlog values (1,N'Tèo','5/12/2020',N'My Home')
insert into BinhLuanBlog values (2,N'John Wick','3/12/2020',N'Where is my dog?')



SELECT LOAISANPHAM.TenLoaiSP, SANPHAM.TenSP, SANPHAM.HinhAnh, SANPHAM.TienSP, SANPHAM.MaSP, LOAISANPHAM.MaLoaiSP 
FROM LOAISANPHAM INNER JOIN SANPHAM ON LOAISANPHAM.MaLoaiSP = SANPHAM.MaLoaiSP
WHERE SANPHAM.MaLoaiSP='LSP01'