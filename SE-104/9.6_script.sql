USE [master]
GO
/****** Object:  Database [QLSV]    Script Date: 6/9/2024 12:40:06 AM ******/
CREATE DATABASE [QLSV]

GO
ALTER DATABASE [QLSV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLSV] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLSV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLSV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLSV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLSV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLSV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLSV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLSV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLSV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLSV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLSV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLSV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLSV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLSV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLSV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLSV] SET RECOVERY FULL 
GO
ALTER DATABASE [QLSV] SET  MULTI_USER 
GO
ALTER DATABASE [QLSV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLSV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLSV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLSV] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLSV] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLSV] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLSV', N'ON'
GO
ALTER DATABASE [QLSV] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLSV] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLSV]
GO
USE [QLSV]
GO
/****** Object:  Sequence [dbo].[sinhvienSeq]    Script Date: 6/9/2024 12:40:06 AM ******/
CREATE SEQUENCE [dbo].[sinhvienSeq] 
 AS [bigint]
 START WITH 1100
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  Table [dbo].[tblDiem]    Script Date: 6/9/2024 12:40:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDiem](
	[ngaytao] [datetime] NULL,
	[nguoitao] [varchar](30) NULL,
	[ngaycapnhat] [datetime] NULL,
	[nguoicapnhat] [nvarchar](30) NULL,
	[masinhvien] [varchar](50) NOT NULL,
	[malophoc] [bigint] NOT NULL,
	[lanhoc] [int] NOT NULL,
	[diemthilan1] [float] NULL,
	[diemthilan2] [float] NULL,
 CONSTRAINT [PK_tblDiem_1] PRIMARY KEY CLUSTERED 
(
	[masinhvien] ASC,
	[malophoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDieuKien]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDieuKien](
	[mamonhoc] [int] NOT NULL,
	[mamonhoc_truoc] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mamonhoc] ASC,
	[mamonhoc_truoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGiaoVien]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGiaoVien](
	[ngaytao] [datetime] NULL,
	[nguoitao] [varchar](30) NULL,
	[ngaycapnhat] [datetime] NULL,
	[nguoicapnhat] [varchar](30) NULL,
	[magiaovien] [int] IDENTITY(1,1) NOT NULL,
	[ho] [nvarchar](10) NULL,
	[tendem] [nvarchar](20) NULL,
	[ten] [nvarchar](10) NOT NULL,
	[gioitinh] [tinyint] NULL,
	[khoa] [char](4) NULL,
	[hocvi] [nvarchar](20) NULL,
	[ngaysinh] [date] NULL,
	[dienthoai] [varchar](30) NULL,
	[email] [varchar](150) NULL,
	[diachi] [nvarchar](150) NULL,
	[matkhau] [varchar](50) NULL,
 CONSTRAINT [PK_tblGiaoVien] PRIMARY KEY CLUSTERED 
(
	[magiaovien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLopHoc]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLopHoc](
	[ngaytao] [datetime] NULL,
	[nguoitao] [varchar](30) NULL,
	[ngaycapnhat] [datetime] NULL,
	[nguoicapnhat] [varchar](30) NULL,
	[malophoc] [bigint] IDENTITY(1,1) NOT NULL,
	[mamonhoc] [int] NULL,
	[tietbatdau] [int] NULL,
	[tietketthuc] [int] NULL,
	[thu] [int] NULL,
	[magiaovien] [int] NULL,
	[soslot] [int] NOT NULL,
	[daketthuc] [tinyint] NULL,
 CONSTRAINT [PK_tblLopHoc] PRIMARY KEY CLUSTERED 
(
	[malophoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMonHoc]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMonHoc](
	[ngaytao] [datetime] NULL,
	[nguoitao] [varchar](30) NULL,
	[ngaycapnhat] [datetime] NULL,
	[nguoicapnhat] [varchar](30) NULL,
	[mamonhoc] [int] IDENTITY(1,1) NOT NULL,
	[tenmonhoc] [nvarchar](150) NULL,
	[sotinchi] [int] NULL,
 CONSTRAINT [PK_tblMonHoc] PRIMARY KEY CLUSTERED 
(
	[mamonhoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSinhVien]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSinhVien](
	[ngaytao] [datetime] NULL,
	[nguoitao] [varchar](30) NULL,
	[ngaycapnhat] [datetime] NULL,
	[nguoicapnhat] [nchar](10) NULL,
	[masinhvien] [varchar](50) NOT NULL,
	[ho] [nvarchar](10) NOT NULL,
	[tendem] [nvarchar](20) NULL,
	[ten] [nvarchar](10) NOT NULL,
	[ngaysinh] [date] NULL,
	[gioitinh] [tinyint] NULL,
	[quequan] [nvarchar](150) NULL,
	[diachi] [nvarchar](150) NULL,
	[dienthoai] [varchar](30) NULL,
	[email] [nvarchar](150) NULL,
	[lopsinhhoat] [nvarchar](50) NULL,
	[matkhau] [varchar](50) NULL,
 CONSTRAINT [PK_tblSinhVien] PRIMARY KEY CLUSTERED 
(
	[masinhvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTaiKhoan]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTaiKhoan](
	[tentaikhoan] [varchar](50) NOT NULL,
	[matkhau] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[tentaikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblDiem] ADD  CONSTRAINT [DF_tblDiem_ngaytao]  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[tblDiem] ADD  CONSTRAINT [DF_tblDiem_nguoitao]  DEFAULT ('admin') FOR [nguoitao]
GO
ALTER TABLE [dbo].[tblDiem] ADD  CONSTRAINT [DF_tblDiem_ngaycapnhat]  DEFAULT (getdate()) FOR [ngaycapnhat]
GO
ALTER TABLE [dbo].[tblDiem] ADD  CONSTRAINT [DF_tblDiem_nguoicapnhat]  DEFAULT ('admin') FOR [nguoicapnhat]
GO
ALTER TABLE [dbo].[tblGiaoVien] ADD  CONSTRAINT [DF_tblGiaoVien_ngaytao]  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[tblGiaoVien] ADD  CONSTRAINT [DF_tblGiaoVien_nguoitao]  DEFAULT ('admin') FOR [nguoitao]
GO
ALTER TABLE [dbo].[tblGiaoVien] ADD  CONSTRAINT [DF_tblGiaoVien_ngaycapnhat]  DEFAULT (getdate()) FOR [ngaycapnhat]
GO
ALTER TABLE [dbo].[tblGiaoVien] ADD  CONSTRAINT [DF_tblGiaoVien_nguoicapnhat]  DEFAULT ('admin') FOR [nguoicapnhat]
GO
ALTER TABLE [dbo].[tblGiaoVien] ADD  DEFAULT ('123') FOR [matkhau]
GO
ALTER TABLE [dbo].[tblLopHoc] ADD  CONSTRAINT [DF_tblLopHoc_ngaytao]  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[tblLopHoc] ADD  CONSTRAINT [DF_tblLopHoc_nguoitao]  DEFAULT ('admin') FOR [nguoitao]
GO
ALTER TABLE [dbo].[tblLopHoc] ADD  CONSTRAINT [DF_tblLopHoc_ngaycapnhat]  DEFAULT (getdate()) FOR [ngaycapnhat]
GO
ALTER TABLE [dbo].[tblLopHoc] ADD  CONSTRAINT [DF_tblLopHoc_nguoicapnhat]  DEFAULT ('admin') FOR [nguoicapnhat]
GO
ALTER TABLE [dbo].[tblLopHoc] ADD  CONSTRAINT [DF_tblLopHoc_daketthuc]  DEFAULT ((0)) FOR [daketthuc]
GO
ALTER TABLE [dbo].[tblMonHoc] ADD  CONSTRAINT [DF_tblMonHoc_ngaytao]  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[tblMonHoc] ADD  CONSTRAINT [DF_tblMonHoc_nguoitao]  DEFAULT ('admin') FOR [nguoitao]
GO
ALTER TABLE [dbo].[tblMonHoc] ADD  CONSTRAINT [DF_tblMonHoc_ngaycapnhat]  DEFAULT (getdate()) FOR [ngaycapnhat]
GO
ALTER TABLE [dbo].[tblMonHoc] ADD  CONSTRAINT [DF_tblMonHoc_nguoicapnhat]  DEFAULT ('admin') FOR [nguoicapnhat]
GO
ALTER TABLE [dbo].[tblSinhVien] ADD  CONSTRAINT [DF_tblSinhVien_ngaytao]  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[tblSinhVien] ADD  CONSTRAINT [DF_tblSinhVien_nguoitao]  DEFAULT ('admin') FOR [nguoitao]
GO
ALTER TABLE [dbo].[tblSinhVien] ADD  CONSTRAINT [DF_tblSinhVien_ngaycapnhat]  DEFAULT (getdate()) FOR [ngaycapnhat]
GO
ALTER TABLE [dbo].[tblSinhVien] ADD  CONSTRAINT [DF_tblSinhVien_nguoicapnhat]  DEFAULT ('admin') FOR [nguoicapnhat]
GO
ALTER TABLE [dbo].[tblSinhVien] ADD  DEFAULT ('123') FOR [matkhau]
GO
ALTER TABLE [dbo].[tblDiem]  WITH CHECK ADD  CONSTRAINT [FK_tblDiem_tblLopHoc] FOREIGN KEY([malophoc])
REFERENCES [dbo].[tblLopHoc] ([malophoc])
GO
ALTER TABLE [dbo].[tblDiem] CHECK CONSTRAINT [FK_tblDiem_tblLopHoc]
GO
ALTER TABLE [dbo].[tblDiem]  WITH CHECK ADD  CONSTRAINT [FK_tblDiem_tblSinhVien] FOREIGN KEY([masinhvien])
REFERENCES [dbo].[tblSinhVien] ([masinhvien])
GO
ALTER TABLE [dbo].[tblDiem] CHECK CONSTRAINT [FK_tblDiem_tblSinhVien]
GO
ALTER TABLE [dbo].[tblDieuKien]  WITH CHECK ADD FOREIGN KEY([mamonhoc])
REFERENCES [dbo].[tblMonHoc] ([mamonhoc])
GO
ALTER TABLE [dbo].[tblDieuKien]  WITH CHECK ADD FOREIGN KEY([mamonhoc_truoc])
REFERENCES [dbo].[tblMonHoc] ([mamonhoc])
GO
ALTER TABLE [dbo].[tblLopHoc]  WITH CHECK ADD  CONSTRAINT [FK_tblLopHoc_tblGiaoVien] FOREIGN KEY([magiaovien])
REFERENCES [dbo].[tblGiaoVien] ([magiaovien])
GO
ALTER TABLE [dbo].[tblLopHoc] CHECK CONSTRAINT [FK_tblLopHoc_tblGiaoVien]
GO
ALTER TABLE [dbo].[tblLopHoc]  WITH CHECK ADD  CONSTRAINT [FK_tblLopHoc_tblMonHoc] FOREIGN KEY([mamonhoc])
REFERENCES [dbo].[tblMonHoc] ([mamonhoc])
GO
ALTER TABLE [dbo].[tblLopHoc] CHECK CONSTRAINT [FK_tblLopHoc_tblMonHoc]
GO
ALTER TABLE [dbo].[tblDieuKien]  WITH CHECK ADD CHECK  (([mamonhoc]<>[mamonhoc_truoc]))
GO
ALTER TABLE [dbo].[tblLopHoc]  WITH CHECK ADD  CONSTRAINT [chk_thu] CHECK  (([thu]=(7) OR [thu]=(6) OR [thu]=(5) OR [thu]=(4) OR [thu]=(3) OR [thu]=(2)))
GO
ALTER TABLE [dbo].[tblLopHoc] CHECK CONSTRAINT [chk_thu]
GO
ALTER TABLE [dbo].[tblLopHoc]  WITH CHECK ADD  CONSTRAINT [chk_tiet] CHECK  (([tietbatdau]<[tietketthuc] AND ([tietbatdau]>=(1) AND [tietketthuc]<=(5) OR [tietbatdau]>=(6) AND [tietketthuc]<=(10))))
GO
ALTER TABLE [dbo].[tblLopHoc] CHECK CONSTRAINT [chk_tiet]
GO
/****** Object:  StoredProcedure [dbo].[allLopHoc]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[allLopHoc]
	@tukhoa nvarchar(50)
as
begin
	set @tukhoa = lower(@tukhoa); -- lowercase <-> viết thường
	select 
		l.malophoc,
		l.mamonhoc,
		m.tenmonhoc,
		m.sotinchi,
		l.thu,
		l.tietbatdau,
		l.tietketthuc,
		case 
			when len(g.tendem) > 0 then concat(g.ho,' ',g.tendem,' ',g.ten)
			else concat(g.ho,' ',g.ten) end as gvien,
		case when daketthuc = 0 then N'Đang hoạt động' else N'Đã kết thúc' end as daketthuc
	from tblLopHoc l
	inner join tblMonHoc m on l.mamonhoc = m.mamonhoc
	inner join tblGiaoVien g on l.magiaovien = g.magiaovien
	where  m.tenmonhoc like '%'+@tukhoa+'%' -- tìm kiếm tương đối có chứa từ khóa
	or lower(concat(g.ho,' ',g.tendem,' ',g.ten)) like '%'+@tukhoa+'%' -- tìm kiếm tương đối có chứa từ khóa
	or lower(concat(g.ho,' ',g.tendem,' ',g.ten)) like '%'+@tukhoa+'%'; -- tìm kiếm tương đối có chứa từ khóa
end
GO
/****** Object:  StoredProcedure [dbo].[dangnhap]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[dangnhap]
	@loaitaikhoan varchar(10),
	@taikhoan varchar(50),
	@matkhau varchar(50)
as
begin
	if @loaitaikhoan = 'admin' 
			select *	
			from tblTaiKhoan 
			where tentaikhoan = @taikhoan
			and matkhau = @matkhau
		else if @loaitaikhoan = 'gv'
			select *	
			from tblGiaoVien
			where CONVERT(varchar(50), magiaovien) = @taikhoan
			and matkhau = @matkhau
		else
			select *
			from tblSinhVien
			where masinhvien = @taikhoan
			and matkhau = @matkhau
end
GO
/****** Object:  StoredProcedure [dbo].[deleteDieuKien]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deleteDieuKien] 
	@mamonhoc int,
	@mamonhoc_truoc int
as
begin
	begin try
		delete from tblDieuKien where mamonhoc = @mamonhoc and mamonhoc_truoc = @mamonhoc_truoc
		return 1;
	end try
	begin catch
		return 0;
	end catch

end
GO
/****** Object:  StoredProcedure [dbo].[deleteGV]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deleteGV]
	@magiaovien int
as
begin
	begin try
		delete from tblDiem where malophoc in (select malophoc from tblLopHoc where magiaovien=@magiaovien)
		delete from tblLopHoc where magiaovien = @magiaovien;
		delete from tblGiaoVien where magiaovien=@magiaovien;
		return 1;
	end try
	begin catch
		return 0;
	end catch

end
GO
/****** Object:  StoredProcedure [dbo].[deleteLH]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[deleteLH] 
	@malophoc int
as
begin
	begin try
		delete from tblDiem where malophoc=@malophoc
		delete from tblLopHoc where malophoc=@malophoc;
		return 1;
	end try
	begin catch
		return 0;
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[deleteMH]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deleteMH]
	@mamonhoc int
as
begin
	begin try
		delete from tblDiem where malophoc in (select malophoc from tblLopHoc where mamonhoc=@mamonhoc)
		delete from tblLopHoc where mamonhoc=@mamonhoc;
		delete from tblDieuKien where mamonhoc=@mamonhoc or mamonhoc_truoc=@mamonhoc;
		delete from tblMonHoc where mamonhoc=@mamonhoc;
		return 1;
	end try
	begin catch
		return 0;
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[deleteSV]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deleteSV]
	@masinhvien varchar(50)
as
begin
	begin try
		delete from tblDiem where masinhvien=@masinhvien;
		delete from tblSinhVien where masinhvien=@masinhvien;
		return 1;
	end try
	begin catch
		return 0;
	end catch

end
GO
/****** Object:  StoredProcedure [dbo].[dkyhoc]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	create proc [dbo].[dkyhoc]
		@masinhvien varchar(50),
		@malophoc bigint
	as
	begin
		--vì bảng điểm(tblDiem) chỉ có cột mã lớp học (khóa ngoại) liên kết tới bảng  lớp học(tblLopHoc) <-> không có thông tin môn học
		--> từ mã lớp cần tìm ra được mã môn học ( nằm trong tblLopHoc) dựa vào inner join --> khai báo 1 biến để lấy thông tin môn học, cụ thể là mã môn học
		--vì số lần học được tính tự động -> cần khai báo 1 biến để đếm số lần học trước đó
		declare @v_lanhoc int,
				@v_mamonhoc int,
				@v_dadangky int;
		-- lấy mã môn học dựa vào mã lớp
		select @v_mamonhoc = mamonhoc
		from tblLopHoc
		where malophoc = @malophoc;

		-- từ mã môn học + mã sinh viên => tính được số lần học trước đó
		select @v_lanhoc = count(*)
		from tblDiem d
		inner join tblLopHoc l on d.malophoc = l.malophoc
		where l.daketthuc = 1 --> chỉ tính số lần học từ các lớp có trạng thái đã kết thúc
		and d.masinhvien = @masinhvien
		and l.mamonhoc = @v_mamonhoc;

		-- kiểm tra xem sinh viên này hiện có đăng ký lớp khác học cùng 1 môn hay không
		select @v_dadangky = count(*)
		from tblDiem d
		inner join tblLopHoc l on d.malophoc = l.malophoc
		where l.daketthuc = 0 --> lớp đang mở
		and l.mamonhoc = @v_mamonhoc --> môn học này đã đăng ký
		and d.masinhvien = @masinhvien; --> sinh viên xác định

		--> nếu kết quả trả về v_dadangky > 0 --> có nghĩa hiện tại sinh viên này đã đăng ký 1 lớp học cùng môn học này rồi
		if @v_dadangky>0 return -1;

		--lần học mới sẽ bằng số lần học trước đó + 1
		set @v_lanhoc = @v_lanhoc + 1;

		--> hơi rối chút, các bạn chịu khó đọc kỹ nhé. Đoạn nào chưa hiểu cứ dừng(hoặc tua) video lại mà ngâm

		--> insert dữ liệu vào bảng điểm <-> đăng ký môn học
		insert into tblDiem(nguoitao,masinhvien,malophoc,lanhoc)
		values(@masinhvien,@masinhvien,@malophoc,@v_lanhoc);--sinh viên đăng ký -> người tạo = mã sinh viên

		--kiểm tra thực thi câu lệnh sql
		if @@ROWCOUNT > 0 return 1 else return 0;
	end
GO
/****** Object:  StoredProcedure [dbo].[doimk]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[doimk]
	@loaitaikhoan varchar(10),
	@taikhoan varchar(50),
	@matkhau varchar(50),
	@matkhaumoi varchar(50)
as
begin
	if @loaitaikhoan = 'admin' 
			update tblTaiKhoan
			set matkhau = @matkhaumoi
			where tentaikhoan = @taikhoan
		else if @loaitaikhoan = 'gv'
			update tblGiaoVien 
			set matkhau = @matkhaumoi
			where CONVERT(varchar(50), magiaovien) = @taikhoan
		else
			update tblSinhVien
			set matkhau = @matkhaumoi
			where masinhvien = @taikhoan
end
GO
/****** Object:  StoredProcedure [dbo].[dsLopChuaDKy]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[dsLopChuaDKy]
	@masinhvien varchar(50)
as
begin
	select
		l.malophoc,
		l.mamonhoc,
		l.tietbatdau,
		l.tietketthuc,
		l.thu,
		m.tenmonhoc,
		m.sotinchi,
		case when len(g.tendem)>0 then concat(g.ho,' ',g.tendem,' ',g.ten)
		else concat(g.ho,' ',g.ten) end as gvien
	from tblLopHoc l
	inner join tblGiaoVien g on l.magiaovien = g.magiaovien
	inner join tblMonHoc m on l.mamonhoc = m.mamonhoc
	where l.daketthuc = 0 -- lấy các lớp đang mở
	and l.malophoc not in ( select malophoc from tblDiem where masinhvien = @masinhvien);
end


GO
/****** Object:  StoredProcedure [dbo].[insertdieukien]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertdieukien]
	@mamonhoc int,
	@mamonhoc_truoc int
as
begin
	insert into tblDieuKien(mamonhoc, mamonhoc_truoc)
	values(@mamonhoc,@mamonhoc_truoc);
	if @@ROWCOUNT > 0 return 1 else return 0;
end
GO
/****** Object:  StoredProcedure [dbo].[InsertGV]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsertGV]
	@nguoitao varchar(30),
	@ho nvarchar(10),
	@tendem nvarchar(20), 
	@ten nvarchar(10),
	@gioitinh tinyint,
	@khoa char(4),
	@hocvi nvarchar(20),
	@ngaysinh date,
	@email varchar(150),
	@dienthoai varchar(30),
	@diachi nvarchar(150)
as
begin
	insert into tblGiaoVien(nguoitao,ho,tendem,ten,gioitinh,khoa,hocvi,ngaysinh,email,dienthoai,diachi)
	values(@nguoitao,@ho,@tendem,@ten,@gioitinh,@khoa, @hocvi, @ngaysinh,@email,@dienthoai,@diachi);
	if @@ROWCOUNT > 0 return 1 else return 0 ;
end;
GO
/****** Object:  StoredProcedure [dbo].[insertlophoc]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertlophoc]
	@nguoitao varchar(30),
	@magiaovien int,
	@mamonhoc int,
	@thu int,
	@tietbatdau int,
	@tietketthuc int,
	@soslot int
as
begin
	insert into tblLopHoc(nguoitao,mamonhoc,magiaovien,thu, tietbatdau,tietketthuc,soslot)
	values(@nguoitao,@mamonhoc,@magiaovien,@thu,@tietbatdau,@tietketthuc,@soslot);
	if @@ROWCOUNT > 0 return 1 else return 0;
end
GO
/****** Object:  StoredProcedure [dbo].[insertMH]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[insertMH]
	@nguoitao varchar(30),
	@tenmonhoc nvarchar(150),
	@sotinchi int
as
begin
	insert into tblMonHoc(nguoitao,tenmonhoc,sotinchi)
	values(@nguoitao,@tenmonhoc,@sotinchi);
	if @@ROWCOUNT > 0 return 1 else return 0;
end
GO
/****** Object:  StoredProcedure [dbo].[monDaDKy]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[monDaDKy]
	@masinhvien varchar(30),
	@tukhoa nvarchar(50)
as
begin
	select
		l.malophoc,
		m.tenmonhoc,
		m.sotinchi,
		l.tietbatdau,
		l.tietketthuc,
		l.thu,
		case when len(trim(g.tendem)) > 0 then concat(g.ho, ' ', g.tendem, ' ', g.ten)
		else concat(g.ho, ' ', g.ten) end as gvien,
		case when l.daketthuc = 1 then N'đã kết thúc'
		else N'đang hoạt động' end as tinhtrang
	from tblDiem d
	inner join tblLopHoc l on d.malophoc = l.malophoc
	inner join tblMonHoc m on l.mamonhoc = m.mamonhoc
	inner join tblGiaoVien g on l.magiaovien = g.magiaovien
	where d.masinhvien = @masinhvien
	--and l.daketthuc = 0
	and lower(tenmonhoc) like '%'+lower(trim(@tukhoa)) + '%';
end
GO
/****** Object:  StoredProcedure [dbo].[resetmk]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[resetmk]
	@masinhvien varchar(50)
as
begin
	update tblSinhVien
	set matkhau='123'
	where masinhvien=@masinhvien
	if @@ROWCOUNT > 0 return 1 else return 0;
end
GO
/****** Object:  StoredProcedure [dbo].[selecmh]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[selecmh]
	@mamh int
as
begin
	select 
		tenmonhoc,
		sotinchi
	from tblMonHoc
	where mamonhoc = @mamh;
end
GO
/****** Object:  StoredProcedure [dbo].[SelectAllDieuKien]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectAllDieuKien]
	@tukhoa nvarchar(50)
as
begin
	set @tukhoa = lower(@tukhoa); -- lowercase <-> viết thường
	select 
		DK.mamonhoc,
		A.tenmonhoc,
		DK.mamonhoc_truoc,
		B.tenmonhoc as tenmonhoc_truoc
	from tblDieuKien DK inner join tblMonHoc A on A.mamonhoc = DK.mamonhoc
	                    inner join tblMonHoc B on B.mamonhoc = DK.mamonhoc_truoc
	where  DK.mamonhoc like '%'+@tukhoa+'%' -- tìm kiếm tương đối có chứa từ khóa
	or DK.mamonhoc_truoc like '%'+@tukhoa+'%' -- tìm kiếm tương đối có chứa từ khóa
	or A.tenmonhoc like '%'+@tukhoa+'%'
	or B.tenmonhoc like '%'+@tukhoa+'%'
end
GO
/****** Object:  StoredProcedure [dbo].[selectAllGV]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[selectAllGV]
	@tukhoa nvarchar(50)
as
begin
	set @tukhoa = lower(ltrim(rtrim(@tukhoa)));
	select 
		magiaovien,
		case when len(ltrim(rtrim(tendem))) > 0 then concat(ltrim(rtrim(ho)),' ',ltrim(rtrim(tendem)), ' ', ltrim(rtrim(ten)))
		else  concat(ltrim(rtrim(ho)),' ', ltrim(rtrim(ten))) end as hoten,
		convert(varchar(10),ngaysinh,103) as ngaysinh,
		case when gioitinh = 1 then 'Nam' else N'Nữ' end as gt,
		khoa,
		hocvi,
		dienthoai,
		email,
		diachi
	from tblGiaoVien
	where lower(ho) like '%'+@tukhoa+'%'
	or lower(tendem) like '%'+@tukhoa+'%'
	or lower(ten) like '%'+@tukhoa+'%'
	or lower(ho) like '%'+@tukhoa+'%'
	or lower(khoa) like '%' + @tukhoa + '%'
	or lower(hocvi) like '%' + @tukhoa + '%'
	or lower(email) like '%'+@tukhoa+'%'
	or lower(dienthoai) like '%'+@tukhoa+'%'
	or lower(magiaovien) like '%'+@tukhoa+'%'
	order by ten;
end
GO
/****** Object:  StoredProcedure [dbo].[selectAllMonHoc]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[selectAllMonHoc]
	@tukhoa nvarchar(50)
as
begin
	set @tukhoa = lower(ltrim(rtrim(@tukhoa)));
	select 
		mamonhoc,
		tenmonhoc,
		sotinchi
	from tblMonHoc
	where mamonhoc like '%'+@tukhoa+'%'
	or lower(tenmonhoc) like '%'+@tukhoa+'%'
	order by tenmonhoc;	
end
GO
/****** Object:  StoredProcedure [dbo].[SelectAllSinhVien]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SelectAllSinhVien]
    @tukhoa nvarchar(50) --tìm kiếm sinh viên dựa vào từ khóa
	--1: tìm theo mã sinh viên
	--2: tìm theo họ, tên đệm, tên sinh viên
	--3: tìm theo số điện thoại
	--loại tìm kiếm: tương đối
as
select
    masinhvien, 
    case 
	  when LEN(tendem) > 0 then
	       CONCAT(ho, ' ', tendem, ' ', ten)
	  else concat(ho, ' ', ten)
	 end as hoten,
	 CONVERT(varchar(10), ngaysinh, 103) as ngaysinh,
	 case
	   when gioitinh=1 then 'Nam'
	   else N'Nữ'
	 end as gioitinh,
	 quequan,
	 diachi, dienthoai, email
from tblSinhVien
where
  lower(ho) like '%'+lower(trim(@tukhoa)) + '%'
  or lower(tendem) like '%'+lower(trim(@tukhoa)) + '%'
  or lower(ten) like '%'+lower(trim(@tukhoa)) + '%'
  or dienthoai like '%'+lower(trim(@tukhoa)) + '%'
  or email like '%'+lower(trim(@tukhoa)) + '%'
order by ten;
GO
/****** Object:  StoredProcedure [dbo].[selectDiem]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[selectDiem]
	@malophoc bigint
as

begin
	select tblDiem.masinhvien,
	case 
			when len(g.tendem) > 0 then concat(g.ho,' ',g.tendem,' ',g.ten)
			else concat(g.ho,' ',g.ten) end as sinhvien ,
	diemthilan1,diemthilan2
	from tblDiem join tblSinhVien g on tblDiem.masinhvien=g.masinhvien
	where malophoc=@malophoc
end
GO
/****** Object:  StoredProcedure [dbo].[SelectDiemSV]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectDiemSV]
  @masinhvien varchar(50),
  @malophoc bigint
AS
BEGIN
     SELECT 
     diemthilan1,
	 diemthilan2
	 FROM tblDiem
	 WHERE masinhvien=@masinhvien and malophoc=@malophoc;
END
GO
/****** Object:  StoredProcedure [dbo].[selectGV]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[selectGV]
	@mgv int
as
begin
	select
		ho,tendem,ten,
		gioitinh,convert(varchar(10),ngaysinh,103) as ngsinh,
		khoa,hocvi,dienthoai,email,diachi
	from tblGiaoVien
	where magiaovien = @mgv;
end
GO
/****** Object:  StoredProcedure [dbo].[selectLopHoc]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[selectLopHoc]
	@malophoc bigint
as
begin
	select
		m.tenmonhoc,
		g.magiaovien,
		l.mamonhoc,
		l.tietbatdau,
		l.tietketthuc,
		l.thu,
		l.soslot,
		daketthuc
	from tblLopHoc l
	inner join tblGiaoVien g on l.magiaovien = g.magiaovien
	inner join tblMonHoc m on l.mamonhoc = m.mamonhoc
	where malophoc = @malophoc;
end
--drop proc selectlophoc
GO
/****** Object:  StoredProcedure [dbo].[selectSV]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[selectSV]
  @masinhvien varchar(50)
AS
BEGIN
     SELECT 
     ho, tendem, ten, convert(varchar(10), ngaysinh, 103) as ngsinh,
	 case
	   when gioitinh=1 then 'Nam' else N'Nữ'
	 end as gtinh,
	 quequan, diachi, dienthoai, email
	 FROM tblSinhVien
	 WHERE masinhvien=@masinhvien;
END
GO
/****** Object:  StoredProcedure [dbo].[ThemMoiSV]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThemMoiSV]
  --khai báo danh sách tham số truyền vào
  @Ho nvarchar(10),
  @TenDem nvarchar(20),
  @Ten nvarchar(10),
  @Ngaysinh date,
  @Gioitinh tinyint,
  @Quequan nvarchar(150),
  @DiaChi nvarchar(150),
  @Dienthoai varchar(30),
  @Email varchar(150)
  --kết thúc khai báo tham số truyền vào
AS
BEGIN
  --thêm dữ liệu mới
  INSERT INTO tblSinhVien
  (
    masinhvien,
	ho, tendem, ten,
	ngaysinh, gioitinh,
	quequan, diachi,
	dienthoai, email
	)VALUES( 
	'SV' + CAST(NEXT VALUE FOR sinhvienSeq as varchar(30)),
	@Ho, @TenDem, @Ten,
	@Ngaysinh, 
	@Gioitinh,
	@Quequan, @Diachi,
	@Dienthoai, @Email
  ); -- kết thúc thêm mới dữ liệu
  -- kiểm tra xem đã insert thành công hay chưa
  IF @@ROWCOUNT > 0 BEGIN RETURN 1 END
  ELSE BEGIN RETURN 0 END;
END
GO
/****** Object:  StoredProcedure [dbo].[tracuudiem]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[tracuudiem]
  @masinhvien varchar(50),
  @tukhoa nvarchar(50)
as
begin
   set @tukhoa = lower(@tukhoa);
   select 
   m.mamonhoc, 
   m.tenmonhoc, 
   d.lanhoc, 
   case when len(g.tendem) >0 then concat(g.ho, ' ', g.tendem, ' ', g.ten)
   else concat(g.ho, ' ', g.ten) end as gvien,
   d.diemthilan1, 
   d.diemthilan2
   from tblDiem d 
   inner join tblLopHoc l on d.malophoc = l.malophoc
   inner join tblMonHoc m on l.mamonhoc = m.mamonhoc
   inner join tblGiaoVien g on l.magiaovien = g.magiaovien
   where d.masinhvien = @masinhvien
   and lower(m.tenmonhoc) like '%'+@tukhoa+'%';
end
GO
/****** Object:  StoredProcedure [dbo].[tracuulop]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[tracuulop]
	@magiaovien int,
	@tukhoa nvarchar(50)
as
begin
	set @tukhoa = lower(@tukhoa);--cho toàn bộ kí tự trở thành lowercase/viết thường
	select 
		tb.malophoc,
		tb.mamonhoc,
		tb.tenmonhoc,
		tb.sotinchi
	from
	(
		select 
			l.malophoc,
			l.mamonhoc,
			m.tenmonhoc,
			m.sotinchi
		from tblLopHoc l
		inner join tblMonHoc m on l.mamonhoc = m.mamonhoc
		where daketthuc = 0
		and magiaovien = @magiaovien
		and lower(m.tenmonhoc) like '%'+@tukhoa+'%' -- tìm kiếm tương đối <--> có chứa từ khóa 
	) as tb 

end

GO
/****** Object:  StoredProcedure [dbo].[UpdateDiemSV]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UpdateDiemSV]
	@masinhvien varchar(50),
	@malophoc bigint,
	@diemthilan1 float,
	@diemthilan2 float
as 
begin
	update tblDiem set
	 diemthilan1=@diemthilan1, diemthilan2=@diemthilan2
	from tblDiem
	where masinhvien=@masinhvien
	and malophoc=@malophoc
end
GO
/****** Object:  StoredProcedure [dbo].[updateGV]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[updateGV]
	@magiaovien int,
	@nguoicapnhat varchar(30),
	@ho nvarchar(10),
	@tendem nvarchar(20), 
	@ten nvarchar(10),
	@gioitinh tinyint,
	@ngaysinh date,
	@email varchar(150),
	@dienthoai varchar(30),
	@diachi nvarchar(150)
as
begin
	update tblGiaoVien
	set nguoicapnhat = @nguoicapnhat,
		ngaycapnhat = getdate(),
		ho = @ho,tendem = @tendem, ten = @ten,
		gioitinh = @gioitinh, ngaysinh = @ngaysinh, email = @email, dienthoai = @dienthoai, diachi = @diachi
	where magiaovien = @magiaovien;
	if @@ROWCOUNT > 0 return 1 else return 0;
end;
GO
/****** Object:  StoredProcedure [dbo].[updatelophoc]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[updatelophoc]
	@nguoicapnhat varchar(30),
	@malophoc bigint,
	@magiaovien int,
	@mamonhoc int,
	@thu int,
	@tietbatdau int,
	@tietketthuc int,
	@daketthuc tinyint,
	@soslot int
as
begin
	update tblLopHoc
	set
		ngaycapnhat = getdate(),
		nguoicapnhat = @nguoicapnhat,		
		magiaovien = @magiaovien,
		thu=@thu,
		tietbatdau=@tietbatdau,
		tietketthuc=@tietketthuc,
		daketthuc=@daketthuc,
		mamonhoc=@mamonhoc,
		soslot=@soslot
	where malophoc = @malophoc;
	if @@ROWCOUNT > 0 return 1 else return 0;
end
--select * from tblLopHoc
-- drop proc updatelophoc
GO
/****** Object:  StoredProcedure [dbo].[updateMH]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[updateMH]
	@nguoicapnhat varchar(30),
	@mamonhoc bigint,
	@tenmonhoc nvarchar(150),
	@sotinchi int
as
begin
	update tblMonHoc
	set
		nguoicapnhat = @nguoicapnhat,
		ngaycapnhat = getdate(),
		tenmonhoc = @tenmonhoc,
		sotinchi = @sotinchi
	where mamonhoc = @mamonhoc;
	if @@ROWCOUNT > 0 return 1 else return 0;
	
end
GO
/****** Object:  StoredProcedure [dbo].[updateSV]    Script Date: 6/9/2024 12:40:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[updateSV]
   @masinhvien varchar(50),
   @ho nvarchar(10),
   @tendem nvarchar(20),
   @ten nvarchar(10),
   @ngaysinh date,
   @gioitinh tinyint,
   @quequan nvarchar(150),
   @diachi nvarchar(150),
   @dienthoai varchar(30),
   @email varchar(150)
AS
BEGIN
   UPDATE tblSinhVien
   SET
     ho=@ho,
	 tendem=@tendem,
	 ten=@ten,
	 ngaysinh=@ngaysinh,
	 gioitinh=@gioitinh,
	 quequan=@quequan,
	 diachi=@diachi,
	 dienthoai=@dienthoai,
	 email=@email
	WHERE masinhvien=@masinhvien;
	IF @@ROWCOUNT > 0 BEGIN RETURN 1 END
	ELSE BEGIN RETURN 0 END;
END
GO
USE [QLSV]
GO

CREATE TRIGGER TRG_INSERT_DANGKY_3
ON tblDiem
FOR INSERT
AS
BEGIN
	DECLARE @thu int
	DECLARE @daketthuc tinyint
	DECLARE @tietbatdau int
	DECLARE @tietketthuc int
	DECLARE @masinhvien varchar(50)
	DECLARE @malophoc bigint
	SELECT @thu = thu, @tietbatdau = tietbatdau, @tietketthuc = tietketthuc, @masinhvien = masinhvien, @malophoc = INSERTED.malophoc, @daketthuc = daketthuc
	FROM INSERTED, tblLopHoc
	WHERE INSERTED.malophoc = tblLopHoc.malophoc

	IF EXISTS
	(
		SELECT 1 
		FROM tblLopHoc, tblDiem
		WHERE tblLopHoc.malophoc = tblDiem.malophoc
		AND tblDiem.masinhvien = @masinhvien
		AND 
		(
			(
				tblLopHoc.tietbatdau <= @tietbatdau
				AND @tietbatdau <= tblLopHoc.tietketthuc
			)
			OR
			(
				tblLopHoc.tietbatdau <= @tietketthuc
				AND @tietketthuc <= tblLopHoc.tietketthuc
			)
		)
		AND tblLopHoc.thu = @thu
		AND tblLopHoc.daketthuc = 0
		AND @daketthuc = 0
		AND tblLopHoc.malophoc != @malophoc
	)
	BEGIN
		PRINT N'Đăng ký không thành công do trùng lịch với môn khác!'
		ROLLBACK TRANSACTION
	END
END
GO
CREATE TRIGGER TRG_INSERT_DANGKY_2
ON tblDiem
FOR INSERT
AS
BEGIN
	DECLARE @mamonhoc int
	DECLARE @malophoc bigint
	DECLARE @masinhvien varchar(50)
	DECLARE @daketthuc tinyint
	SELECT @mamonhoc = mamonhoc, @daketthuc=daketthuc FROM tblLopHoc, INSERTED
	WHERE tblLopHoc.malophoc = inserted.malophoc
	SELECT @masinhvien = masinhvien, @malophoc = malophoc FROM INSERTED
	
	IF EXISTS
	(
		SELECT 1 FROM tblMonHoc
		WHERE mamonhoc IN 
			(
				SELECT mamonhoc_truoc
				FROM tblDieuKien
				WHERE tblDieuKien.mamonhoc = @mamonhoc
			)
		AND mamonhoc NOT IN
			(
				SELECT tblLopHoc.mamonhoc
				FROM tblLopHoc, tblDiem
				WHERE tblLopHoc.malophoc = tblDiem.malophoc
				AND tblDiem.masinhvien = @masinhvien
				AND tblLopHoc.daketthuc = 1
			)
	)
	BEGIN
		PRINT N'sinh viên chưa học đủ môn tiên quyết'
		ROLLBACK TRANSACTION
	END
END
GO

CREATE TRIGGER TRG_INSERT_DANGKY_4
ON tblDiem
AFTER INSERT
AS
BEGIN
	UPDATE tblLopHoc
	SET soslot = soslot - 1
	WHERE tblLopHoc.malophoc = (SELECT malophoc FROM INSERTED)

END
GO

create TRIGGER TRG_INSERT_DANGKY_7
ON tblDiem
FOR INSERT
AS
BEGIN
	DECLARE @soslot INT
	SELECT @soslot = soslot FROM tblDiem, tblLopHoc
	WHERE tblLopHoc.malophoc = tblDiem.malophoc

	IF(@soslot < 0)
	BEGIN
		PRINT N'Môn đăng ký đã hết slot!'
		ROLLBACK TRANSACTION
	END
END

GO
create trigger TRG_DELETE_LOP
on tblLopHoc
for delete
as
begin
   declare @daketthuc int
   select @daketthuc=daketthuc from deleted
   if (@daketthuc=0)
   begin
     print N'không thể xóa lớp còn hoạt động!'
	 rollback transaction
   end
end
GO
