# Create your views here.
from django.shortcuts import get_object_or_404, render_to_response
from django.http import HttpResponseRedirect, HttpResponse
from django.core.context_processors import csrf
from django.core.urlresolvers import reverse
from django.template import RequestContext
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from projapp.models import *
from django.utils.translation import ugettext as _
from proj.settings import LANGUAGES,LANGUAGE_CODE

def add_csrf(request, **kwargs):
    """Add CSRF to dictionary."""
    d = dict(user=request.user,LANGUAGES=LANGUAGES, **kwargs)
    d.update(csrf(request))
    return d

def index(request):
    return render_to_response('projapp/index.html',add_csrf(request))

#@login_required
def xemdiem(request):
    hoc_ky_list = HocKy.objects.all().order_by("-mhk")
    return render_to_response('projapp/xemdiem.html',add_csrf(request, hoc_ky_list=hoc_ky_list))

#def ketqua(request):
#    return render_to_response('projapp/ketqua.html')
def ketqua(request):
    hoc_ky=request.GET.get('hoc_ky',None)
    mssv=request.GET.get('mssv', None)
    hoc_ky_list = HocKy.objects.all().order_by("-mhk")
    if mssv is None or mssv =='':
        return render_to_response('projapp/ketqua.html', add_csrf(request, hoc_ky_list=hoc_ky_list,error_message=_(u"Bạn chưa nhập mã số sinh viên")))
    try:
        sinhvien=SinhVien.objects.get(mssv=User.objects.get_by_natural_key(mssv))
    except:
        return render_to_response('projapp/ketqua.html', add_csrf(request, hoc_ky_list=hoc_ky_list,error_message=_(u"Không tìm thấy sinh viên")+" " +mssv))
    else:
        diem_list=DanhSachDiem.objects.select_related()
        if (hoc_ky=='NULL'):
            hk_list = HocKy.objects.all().order_by("-mhk")
        else:
            hk_list = HocKy.objects.filter(mhk=hoc_ky)   
        kq=[]
        for diem in diem_list:
            if (SinhVien.objects.get(pk=diem.mssv_id) == sinhvien):
                lopmonhoc=LopMonHoc.objects.select_related().get(pk=diem.mlmh_id)        
                monhoc=MonHoc.objects.get(pk=lopmonhoc.mon_hoc_id)
                hocky=HocKy.objects.get(pk=lopmonhoc.hoc_ky_id)
                kq_n=[hocky.mhk,monhoc.mmh,monhoc.ten_mh, lopmonhoc.nhom_to, diem.diem_giua_ky,diem.diem_cuoi_ky,diem.diem_tong_ket]
                kq.append(kq_n)
        return render_to_response('projapp/ketqua.html',add_csrf(request,hoc_ky_list=hoc_ky_list,hk_list=hk_list,sinhvien=sinhvien,ketqua=kq))
    
@login_required
def giangvien(request):
    try:
        gv = GiangVien.objects.get(mgv=User.objects.get_by_natural_key(request.user))
    except:
        return render_to_response('projapp/error.html',add_csrf(request,messenge = _(u"Bạn không phải là giảng viên") ))
    else:
        return render_to_response('projapp/giangvien.html',add_csrf(request,giangvien=gv))

@login_required
def diemlop(request):
    try:
        gv = GiangVien.objects.get(mgv=User.objects.get_by_natural_key(request.user))
    except:
        return render_to_response('projapp/error.html',add_csrf(request, messenge= _(u"Bạn không phải là giảng viên")))
    else:
        lop_hoc_list=LopMonHoc.objects.filter(giang_vien=gv).order_by("-hoc_ky")
        if(lop_hoc_list.count()==0):
            messenge=_(u"Bạn không phụ trách lớp học nào cả!")
        else:
            messenge=''
        return render_to_response('projapp/diemlop.html', add_csrf(request,giangvien=gv,lop_hoc_list=lop_hoc_list,messenge=messenge))
    
    
@login_required
def ketqua_diemlop(request):
    try:
        gv = GiangVien.objects.get(mgv=User.objects.get_by_natural_key(request.user))
    except:
        return render_to_response('projapp/error.html',add_csrf(request,messenge=_(u"Bạn không phải là giảng viên")) )
    else:
        lop_hoc_list=LopMonHoc.objects.filter(giang_vien=gv).order_by("-hoc_ky")
        pk_lmh=request.GET.get('lop_hoc',None)
        lop_hoc=LopMonHoc.objects.get(pk=pk_lmh)
        if (lop_hoc == None):
            return HttpResponseRedirect(reverse('polls.views.diemlop'))
        else:
            danh_sach_diem=DanhSachDiem.objects.filter(mlmh=lop_hoc)
            kq=[]
            for diem in danh_sach_diem:
                sv=SinhVien.objects.get(pk=diem.mssv_id)
                kq.append( (sv.ten_sv,diem.diem_giua_ky,diem.diem_cuoi_ky,diem.diem_tong_ket) )
                            
            return render_to_response('projapp/ketqua_diemlop.html', add_csrf(request,giangvien=gv,lop_hoc=lop_hoc, lop_hoc_list=lop_hoc_list,ket_qua=kq))

@login_required
def sinhvien(request):
    try:
        sv= SinhVien.objects.get(mssv=User.objects.get_by_natural_key(request.user))
    except:
        return render_to_response('projapp/error.html',add_csrf(request, messenge= _(u"Bạn không phải là sinh viên")) )
    else:
        return render_to_response('projapp/sinhvien.html',add_csrf(request,sinhvien=sv))

@login_required
def diemsinhvien(request):
    try:
        sv= SinhVien.objects.get(mssv=User.objects.get_by_natural_key(request.user))
    except:
        return render_to_response('projapp/error.html',add_csrf(request,messenge= _(u"Bạn không phải là sinh viên")))
    else:
        hoc_ky_list = HocKy.objects.all().order_by("-mhk")
        if(hoc_ky_list.count()==0):
            messenge=_(u"Không có học kỳ trong cơ sở dữ liệu")
        else:
            messenge=''
        return render_to_response('projapp/diemsinhvien.html',add_csrf(request,hoc_ky_list=hoc_ky_list,sinhvien=sv,messenge=messenge))

@login_required
def ketqua_diemsinhvien(request):
    try:
        sv= SinhVien.objects.get(mssv=User.objects.get_by_natural_key(request.user))
    except:
        return render_to_response('projapp/error.html',add_csrf(request, messenge=_(u"Bạn không phải là sinh viên") ))
    else:
        hoc_ky=request.GET.get('hoc_ky',None)
        hoc_ky_list = HocKy.objects.all().order_by("-mhk")
        if(hoc_ky_list.count()==0):
            messenge=_(u"Không có học kỳ trong cơ sở dữ liệu")
        else:
            messenge=''
        diem_list=DanhSachDiem.objects.select_related()
        if (hoc_ky=='NULL'):
            hk_list = HocKy.objects.all().order_by("-mhk")
        else:
            hk_list = HocKy.objects.filter(mhk=hoc_ky)   
        kq=[]
        for diem in diem_list:
            if (SinhVien.objects.get(pk=diem.mssv_id) == sv):
                lopmonhoc=LopMonHoc.objects.select_related().get(pk=diem.mlmh_id)        
                monhoc=MonHoc.objects.get(pk=lopmonhoc.mon_hoc_id)
                hocky=HocKy.objects.get(pk=lopmonhoc.hoc_ky_id)
                kq_n=[hocky.mhk,monhoc.mmh,monhoc.ten_mh, lopmonhoc.nhom_to, diem.diem_giua_ky,diem.diem_cuoi_ky,diem.diem_tong_ket]
                kq.append(kq_n)
        return render_to_response('projapp/ketqua_diemsinhvien.html',add_csrf(request,hoc_ky_list=hoc_ky_list,hk_list=hk_list,sinhvien=sv,ketqua=kq))  
