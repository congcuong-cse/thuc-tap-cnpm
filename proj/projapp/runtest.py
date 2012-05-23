# -*- coding: utf-8 -*-
from django.test.client import Client
from django.contrib.auth.models import User
from django.contrib.sites.models import Site

from projapp.models import *

def runGiangVien():
    giangvien=[
               [ 'GV0001',  'ĐINH BÁC ÁI', '1989-01-10', 'GV0001@giangvien.com' ],
               [ 'GV0002',  'TRẦN HOÀI ANH', '1990-09-18', 'GV0002@giangvien.com' ],
               [ 'GV0003',  'TRẦN CÔNG ĐỨC', '1987-09-28', 'GV0003@giangvien.com' ],
               [ 'GV0004',  'NGUYỄN TẤN DUY', '1989-10-25', 'GV0004@giangvien.com' ],
               [ 'GV0005',  'PHAN THỊ THÚY HẰNG', '1987-04-08', 'GV0005@giangvien.com' ],
               [ 'GV0006',  'NGUYỄN THỊ MINH HOA', '1989-10-01', 'GV0006@giangvien.com' ],
               [ 'GV0007',  'TRẦN NGỌC KIÊN', '1988-02-24', 'GV0007@giangvien.com' ],
               [ 'GV0008',  'HỨA KHÁNH LINH', '1990-06-23', 'GV0008@giangvien.com' ],
               [ 'GV0009',  'TRẦN CHÂN MÂY', '1990-01-16', 'GV0009@giangvien.com' ],
               [ 'GV0010',  'LÊ THỊ BÍCH NGỌC', '1989-09-23', 'GV0010@giangvien.com' ],
               [ 'GV0011',  'NGUYỄN THỊ SƠN', '1990-05-14', 'GV0011@giangvien.com' ],
            ]

    for gv in giangvien:
        GiangVien.objects.create(mgv=gv[0],ten_gv=gv[1],ngay_sinh=gv[2],email=gv[3])
def runSinhVien():
    sinhvien=[       
                [ '20108018',  'TẠ VĂN HUYNH', '1989-12-25', 'M', '2001', 'CK', '20108018@sinhvien.com' ],
                [ '20508264',  'TRỊNH THỊ MAI TRANG', '1989-01-04', 'M', '2005', 'CK', '20508264@sinhvien.com' ],
                [ '20608019',  'NGUYỄN LÊ TOÀN  KHOA', '1987-10-26', 'F', '2006', 'CK', '20608019@sinhvien.com' ],
                [ '20708230',  'NGUYỄN TRỌNG  DUY', '1987-04-30', 'M', '2007', 'CK', '20708230@sinhvien.com' ],
                [ '20708232',  'HỒ THỊ PHƯƠNG HIỀN', '1989-05-21', 'M', '2007', 'CK', '20708232@sinhvien.com' ],
                [ '20808035',  'NGUYỄN PHƯƠNG VI', '1990-09-23', 'F', '2008', 'CK', '20808035@sinhvien.com' ],
                [ '20808229',  'VÕ HUỲNH HẠ DU', '1988-10-11', 'F', '2008', 'CK', '20808229@sinhvien.com' ],
                [ '20908013',  'HỒNG THỊ HIỀN', '1989-01-24', 'F', '2009', 'CK', '20908013@sinhvien.com' ],
                [ '20908022',  'ĐINH THỊ TRÀ MY', '1990-07-26', 'M', '2009', 'CK', '20908022@sinhvien.com' ],
                [ '20908231',  'LÊ THỊ HAY', '1990-05-18', 'F', '2009', 'CK', '20908231@sinhvien.com' ],
                [ '21008010',  'LÊ DIỄM HẰNG', '1989-08-28', 'M', '2010', 'CK', '21008010@sinhvien.com' ],
                [ '21008261',  'NGUYỄN PHƯƠNG HOÀI', '1989-01-06', 'F', '2010', 'CK', '21008261@sinhvien.com' ],
                [ '21008262',  'TRẦN THỊ ANH THY', '1988-11-18', 'M', '2010', 'CK', '21008262@sinhvien.com' ],
                [ '21108033',  'TRƯƠNG PHÙNG THANH TUẤN', '1985-08-30', 'F', '2011', 'CK', '21108033@sinhvien.com' ],
                [ '30508233',  'NGUYỄN ĐÌNH LÊ HÒA', '1988-06-18', 'F', '2005', 'DC', '30508233@sinhvien.com' ],
                [ '30808017',  'NGUYỄN HỮU HUY', '1987-05-13', 'F', '2008', 'DC', '30808017@sinhvien.com' ],
                [ '30808260',  'HUỲNH TRỌNG HIẾU', '1990-08-08', 'M', '2008', 'DC', '30808260@sinhvien.com' ],
                [ '30908237',  'ĐỖ SƠN HUY', '1990-06-25', 'F', '2009', 'DC', '30908237@sinhvien.com' ],
                [ '31008234',  'VŨ VIẾT HÙNG', '1988-02-15', 'M', '2010', 'DC', '31008234@sinhvien.com' ],
                [ '40608238',  'LÊ NGỌC KIÊN', '1988-06-20', 'M', '2006', 'DD', '40608238@sinhvien.com' ],
                [ '40708034',  'PHẠM THỊ THÙY VÂN', '1990-10-23', 'M', '2007', 'DD', '40708034@sinhvien.com' ],
                [ '40808020',  'NGÔ LỆ THÙY LINH', '1990-01-10', 'M', '2008', 'DD', '40808020@sinhvien.com' ],
                [ '41008239',  'ÔNG THỊ TUYẾT NGA', '1990-07-20', 'F', '2010', 'DD', '41008239@sinhvien.com' ],
                [ '41108026',  'HUỲNH ANH THI', '1990-09-02', 'M', '2011', 'DD', '41108026@sinhvien.com' ],
                [ '41108225',  'NGUYỄN THỊ KIM NGỌC', '1989-09-18', 'F', '2011', 'DD', '41108225@sinhvien.com' ],
                [ '41108240',  'NGUYỄN THỊ KIM NGỌC', '1989-09-18', 'M', '2011', 'DD', '41108240@sinhvien.com' ],
                [ '50808243',  'ĐỒN THỊ THỤC QUỲNH', '1989-11-20', 'F', '2008', 'MT', '50808243@sinhvien.com' ],
                [ '50908242',  'LA HUỆ PHƯƠNG', '1990-11-20', 'M', '2009', 'MT', '50908242@sinhvien.com' ],
                [ '51008029',  'TRẦN THỊ TUYẾT TRINH', '1990-01-02', 'F', '2010', 'MT', '51008029@sinhvien.com' ],
                [ '51108241',  'CHÂU THỊ HỒNG NHÃN', '1989-06-16', 'F', '2011', 'MT', '51108241@sinhvien.com' ],
                [ '60508263',  'MAI THỊ HỒNG TRÂM', '1990-04-23', 'F', '2005', 'HC', '60508263@sinhvien.com' ],
                [ '60908246',  'TRẦN NỮ XUÂN THƠ', '1990-09-10', 'M', '2009', 'HC', '60908246@sinhvien.com' ],
                [ '61008030',  'LẠI CHÍNH TRỰC', '1990-05-27', 'M', '2010', 'HC', '61008030@sinhvien.com' ],
                [ '61108003',  'NGUYỄN HUỲNH DẠ THẢO', '1990-03-03', 'F', '2011', 'HC', '61108003@sinhvien.com' ],
                [ '61108249',  'TRẦN THỊ BÍCH THUẬN', '1990-10-09', 'F', '2011', 'HC', '61108249@sinhvien.com' ],
                [ '70808251',  'TRẦN THỊ KIM TRANG', '1990-03-04', 'F', '2008', 'QL', '70808251@sinhvien.com' ],
                [ '70908250',  'NGUYỄN MINH TIẾN', '1990-11-11', 'M', '2009', 'QL', '70908250@sinhvien.com' ],
                [ '71008025',  'PHAN THỊ THANH NAM', '1990-07-12', 'F', '2010', 'QL', '71008025@sinhvien.com' ],
                [ '80908252',  'BÙI MINH TRÍ', '1989-09-02', 'M', '2009', 'XD', '80908252@sinhvien.com' ],
                [ '81002317',  'PHAN THỊ LAN ANH', '1988-05-18', 'F', '2010', 'XD', '81002317@sinhvien.com' ],
                [ '81008254',  'TRẦN KHẮC TRỌNG', '1990-10-04', 'M', '2010', 'XD', '81008254@sinhvien.com' ],
                [ '90908256',  'LÂM THỊ THANH TUYỀN', '1989-09-24', 'M', '2009', 'MO', '90908256@sinhvien.com' ],
                [ '91008007',  'PHAN THỊ THANH TRUNG', '1989-08-21', 'F', '2010', 'MO', '91008007@sinhvien.com' ],
                [ '91108257',  'VÕ THỊ THÙY DUNG', '1990-07-30', 'F', '2011', 'MO', '91108257@sinhvien.com' ],

            ]
    for sv in sinhvien:
        SinhVien.objects.create(mssv=sv[0],ten_sv=sv[1],ngay_sinh=sv[2],gioi_tinh=sv[3],khoa=sv[4],nganh=sv[5],email=sv[6])

def runHocKy():
    HocKy.objects.create(mhk='111',ten_hk='Học kỳ 1, Năm học 2011 2012')
    HocKy.objects.create(mhk='112',ten_hk='Học kỳ 2, Năm học 2011 2012')

def runMonHoc():
    monhoc=[
                [ '006001',  'Giải tích 1 ' ],
                [ '006002',  'Giải tích 2 ' ],
                [ '006004',  'Đại số' ],
                [ '007001',  'Vật lý 1 ' ],
                [ '007002',  'Vật lý 2 ' ],
                [ '007005',  'TN Vật lý ' ],
                [ '006023',  'Phương pháp tính ' ],
                [ '006018',  'Xác suất thống kê ' ],
                [ '201010',  'Cơ ứng dụng ' ],
                [ '201011',  'Cơ Lý thuyết ' ],
                [ '604001',  'Hóa học đại cương A ' ],
                [ '604002',  'Hóa học đại cương B ' ],
                [ '604003',  'Thí nghiệm hóa học ĐC' ],
                [ 'KKK300',  'Kỹ năng Giao tiếp - Ngành nghề' ],
                [ '501001',  'Tin học đại cương ' ],
                [ '806010',  'Vẽ kỹ thuật' ],
                [ '806001',  'Vẽ kỹ  thuật 1A ' ],
                [ '806002',  'Vẽ kỹ  thuật 1B ' ],
                [ '806003',  'Vẽ kỹ  thuật 2A ' ],
                [ '806004',  'Vẽ kỹ  thuật 2B ' ],
                [ '003001',  'Anh văn 1 ' ],
                [ '003002',  'Anh văn 2 ' ],
                [ '003003',  'Anh văn 3 ' ],
                [ '003004',  'Anh văn 4 ' ],
                [ '005001',  'GDTC 1' ],
                [ '005002',  'GDTC 2' ],
                [ '005003',  'GDTC 3 ' ],
                [ '001001',  'Nguyên lý cơ bản CN Mac Lênin' ],
                [ '001004',  'Đường lối CM ĐCSVN ' ],
                [ '001025',  'Tư tưởng HCM ' ],
                [ '610001',  'Môi trường & Con người' ],
                [ '008001',  'Pháp luật VN đại cương ' ],
                [ '809026',  'Sức bền vật liệu 1 ... ' ],
                [ '802015',  'Cơ lưu chất ... ' ],
                [ '802012',  'TN Cơ lưu chất ... ' ],
                [ '210014',  'Nhiệt động lực học kỹ thuật ... ' ],
                [ '406009',  'Kỹ thuật điện ... ' ],
                [ '402024',  'Kỹ thuật điện tử ... ' ],
            ]
    for mh in monhoc:
        MonHoc.objects.create(mmh=mh[0],ten_mh=mh[1])


