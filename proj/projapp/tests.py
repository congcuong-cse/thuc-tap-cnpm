"""
This file demonstrates writing tests using the unittest module. These will pass
when you run "manage.py test".

Replace this with more appropriate tests for your application.
"""

from django.test import TestCase
from django.test.client import Client
from django.contrib.auth.models import User
from django.contrib.sites.models import Site

from projapp.models import DanhSachDiem,GiangVien,HocKy,LopMonHoc,MonHoc,SinhVien

class SimpleTest(TestCase):
    def testGiangVien(self):
        
        Site.objects.create(domain="test.org", name="test.org")
        GiangVien.objects.create(mgv="GV1",ten_gv="Phạm Công Cương",ngay_sinh="1991-10-17",email="GV1"+"@giangvien.com")
     
    def test(self):
        self.c = Client()
        self.c.login(username="Tas", password="123")           
    
