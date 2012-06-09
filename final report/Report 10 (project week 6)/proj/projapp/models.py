from django.db import models
from django.contrib.auth.models import User
from django import forms
from django.forms import ModelForm
from django.core.validators import MaxValueValidator,MinValueValidator
from django.utils.translation import ugettext_lazy as _

class GiangVien (models.Model):
    mgv = models.OneToOneField(User, verbose_name=_(u"Mã giảng viên"));
    ten_gv = models.CharField(_(u"Tên giảng viên"),max_length=50);
    ngay_sinh = models.DateField(_(u"Ngày sinh"));
    
    def __unicode__(self):
        return self.mgv.username +":" +self.ten_gv
    
    class Meta:
        verbose_name_plural =_(u"Giảng viên")
    

class SinhVien (models.Model):
    GENDER_CHOICES = (
        ('M', _(u"Nam")),
        ('F', _(u"Nữ")),
    )
    NGANH_CHOICES = (
        ('CK',     _(u"Cơ khí")),
        ('DC',     _(u"Địa chất-Dầu khí")),
        ('DD',     _(u"Điện - Điện tử")),
        ('MT',     _(u"Khoa học và Kỹ thuật Máy tính")),
        ('HC',     _(u"Kỹ thuật Hóa học")),
        ('QL',     _(u"Quản lý Công nghiệp")),
        ('XD',     _(u"Kỹ Thuật Xây dựng")),
        ('MO',     _(u"Môi trường")),
        ('GT',     _(u"Kỹ thuật Giao thông")),
        ('UD',     _(u"Khoa học Ứng dụng")),
        ('VL',     _(u"Công nghệ Vật liệu")),
    )
    mssv =models.OneToOneField(User, verbose_name=_(u"Mã số sinh viên"));
    ten_sv = models.CharField(_(u"Tên sinh viên"),max_length=50);
    ngay_sinh = models.DateField(_(u"Ngày sinh"));
    gioi_tinh = models.CharField (_(u"Giới tính"),max_length=1, choices=GENDER_CHOICES);
    khoa = models.IntegerField(_(u"Khoá"));
    nganh = models.CharField(_(u"Ngành"),max_length=2, choices=NGANH_CHOICES);
    
    def __unicode__(self):
        return self.mssv.username +':'+self.ten_sv
    
    class Meta:
        verbose_name_plural =_(u"Sinh viên")
    
    
class MonHoc (models.Model):
    mmh = models.CharField(_(u"Mã môn học"),max_length=6,primary_key=True);
    ten_mh = models.CharField(_(u"Tên môn học"),max_length=50);
    tile_giuaky = models.FloatField(_(u"Tỉ lệ giữa kỳ"),default=0.2,validators=[MaxValueValidator(1.0),MinValueValidator(0.0)])
    def tile_cuoiky(self):
        return 1-self.tile_giuaky
    tile_cuoiky.short_description = _(u"Tỉ lệ cuối kỳ")  
    
    def __unicode__(self):
        return self.mmh +':'+self.ten_mh
    
    class Meta:
        verbose_name_plural =_(u"Môn học")
    
class HocKy (models.Model):
    mhk = models.IntegerField(_(u"Mã học kỳ"),primary_key=True);
    ten_hk = models.CharField(_(u"Tên học kỳ"),max_length=50,unique=True);
    
    def __unicode__(self):
        return str(self.mhk)
    
    class Meta:
        verbose_name_plural =_(u"Học kỳ")
    
    
class LopMonHoc (models.Model):
    hoc_ky = models.ForeignKey(HocKy,verbose_name=_(u"Học kỳ"));
    mon_hoc = models.ForeignKey(MonHoc,verbose_name=_(u"Môn học"));
    nhom_to = models.CharField(_(u"Nhóm tổ"),max_length=5);
    giang_vien = models.ForeignKey(GiangVien,verbose_name=_(u"Giảng viên"),blank=True, null=True);
    
    def __unicode__(self):
        return self.hoc_ky.__unicode__()+' - '+ self.mon_hoc.__unicode__()+' - ' + self.nhom_to
    
    class Meta:
        verbose_name_plural =_(u"Lớp môn học")
        unique_together =('hoc_ky','mon_hoc','nhom_to')
    
class DanhSachDiem(models.Model):
    mlmh = models.ForeignKey(LopMonHoc,verbose_name=_(u"Học kỳ-Môn học-Nhóm"));
    mssv = models.ForeignKey(SinhVien,verbose_name=_(u"Sinh viên"));
    diem_giua_ky = models.FloatField(_(u"Điểm giữa kỳ"),blank=True, null=True, validators=[MaxValueValidator(10.0),MinValueValidator(0.0)]);
    diem_cuoi_ky = models.FloatField(_(u"Điểm cuối kỳ"),blank=True, null=True, validators=[MaxValueValidator(10.0),MinValueValidator(0.0)]);
    diem_tong_ket = models.FloatField(_(u"Điểm tổng kết"),blank=True, null=True, validators=[MaxValueValidator(10.0),MinValueValidator(0.0)]);
    
    def diem_tong_ket(self):
        if(self.diem_giua_ky is not None and self.diem_cuoi_ky is not None):
            lmh=LopMonHoc.objects.select_related().get(pk=self.mlmh_id)
            mh=MonHoc.objects.select_related().get(pk=lmh.mon_hoc_id)

            return self.diem_giua_ky*mh.tile_giuaky + self.diem_cuoi_ky*mh.tile_cuoiky()
        else:
            return None
    diem_tong_ket.short_description = _(u"Điểm tổng kết")    
    
    
    def __unicode__(self):
        return ''
        
    class Meta:
        verbose_name_plural = _(u"Danh sách sinh viên và điểm")
        unique_together =('mlmh','mssv')



#Forms
class DanhSachDiemForm(ModelForm):
    class Meta:
        model = DanhSachDiem
    