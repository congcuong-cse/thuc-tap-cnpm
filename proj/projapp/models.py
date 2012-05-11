from django.db import models
from django.utils import timezone
from datetime import datetime

class GIANG_VIEN (models.Model):
    MGV = models.IntegerField(primary_key=True);
    TEN_GV = models.CharField(max_length=50)
    NAM_SINH = models.DateField('date published')

class SINH_VIEN (models.Model):
    MSSV = models.IntegerField(primary_key=True);
    TEN_SV = models.CharField(max_length=50);
    KHOA = models.IntegerField();
    NGANH = models.CharField(max_length=50);
class MON_HOC (models.Model):
    MMH = models.IntegerField(primary_key=True);
    TEN_MH = models.CharField(max_length=50);
class HOC_KY (models.Model):
    MHK = models.IntegerField();
    TEN_HK = models.CharField(max_length=50);
class LOP_MON_HOC (models.Model):
    MLMH = models.IntegerField(primary_key=True);
    HOCKY = models.ForeignKey(HOC_KY);
    MON_HOC = models.ForeignKey(MON_HOC);
    GIANG_VIEN = models.ForeignKey(GIANG_VIEN);
class DANH_SACH_DIEM(models.Model):
    MLMH = models.ForeignKey(LOP_MON_HOC, primary_key=True);
    MSSV = models.ForeignKey(SINH_VIEN,primary_key=True);
    DIEM_GIUA_KY = models.IntegerField();
    DIEM_CUOI_KY = models.IntegerField();
    DIEM_TONG_KET = models.IntegerField();
