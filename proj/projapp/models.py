from django.db import models
from django import forms


class GiangVien (models.Model):
    mgv = models.CharField('Mã giảng viên',max_length=10,primary_key=True);
    ten_gv = models.CharField('Tên giảng viên',max_length=50);
    ngay_sinh = models.DateField('Ngày sinh');
    email = models.EmailField('Địa chỉ email',blank=True, null=True);
    
    def __unicode__(self):
        return self.mgv +":" +self.ten_gv
    
    class Meta:
        verbose_name_plural ='Giảng viên'
    

class SinhVien (models.Model):
    GENDER_CHOICES = (
        ('M', 'Nam'),
        ('F', 'Nữ'),
    )
    mssv = models.CharField('Mã số sinh viên',max_length=10,primary_key=True);
    ten_sv = models.CharField('Tên sinh viên',max_length=50);
    ngay_sinh = models.DateField('Ngày sinh');
    gioi_tinh = models.CharField ('Giới tính',max_length=1, choices=GENDER_CHOICES);
    khoa = models.IntegerField('Khoá');
    nganh = models.CharField('Ngành',max_length=50);
    email = models.EmailField('Địa chỉ email',blank=True, null=True);
    
    def __unicode__(self):
        return self.mssv +':'+self.ten_sv
    
    class Meta:
        verbose_name_plural ='Sinh viên'
    
    
class MonHoc (models.Model):
    mmh = models.CharField('Mã môn học',max_length=10,primary_key=True);
    ten_mh = models.CharField('Tên môn học',max_length=50);
    
    def __unicode__(self):
        return self.mmh +':'+self.ten_mh
    
    class Meta:
        verbose_name_plural ='Môn học'
    
class HocKy (models.Model):
    mhk = models.IntegerField('Mã học kỳ',primary_key=True);
    ten_hk = models.CharField('Tên học kỳ',max_length=50,unique=True);
    
    def __unicode__(self):
        return str(self.mhk)
    
    class Meta:
        verbose_name_plural ='Học kỳ'
    
    
class LopMonHoc (models.Model):
    hoc_ky = models.ForeignKey(HocKy,verbose_name='Học kỳ');
    mon_hoc = models.ForeignKey(MonHoc,verbose_name='Môn học');
    nhom_to = models.CharField('Nhóm tổ',max_length=5);
    giang_vien = models.ForeignKey(GiangVien,verbose_name='Giảng viên',blank=True, null=True);
    
    def __unicode__(self):
        return self.hoc_ky.__unicode__()+' - '+ self.mon_hoc.__unicode__()+' - ' + self.nhom_to
    
    class Meta:
        verbose_name_plural ='Lớp môn học'
        unique_together =('hoc_ky','mon_hoc','nhom_to')
    
class DanhSachDiem(models.Model):
    mlmh = models.ForeignKey(LopMonHoc,verbose_name='Học kỳ-Môn học-Nhóm');
    mssv = models.ForeignKey(SinhVien,verbose_name='Sinh viên');
    diem_giua_ky = models.FloatField('Điểm giữa kỳ',blank=True, null=True);
    diem_cuoi_ky = models.FloatField('Điểm cuối kỳ',blank=True, null=True);
    diem_tong_ket = models.FloatField('Điểm tổng kết',blank=True, null=True);
    
    def __unicode__(self):
        return ''
        
    class Meta:
        verbose_name_plural = 'Danh sách sinh viên và điểm'
        unique_together =('mlmh','mssv')

