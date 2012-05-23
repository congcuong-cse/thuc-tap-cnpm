# Create your views here.
from django.shortcuts import get_object_or_404, render_to_response
from django.http import HttpResponseRedirect, HttpResponse
from django.core.context_processors import csrf
from django.core.urlresolvers import reverse
from django.template import RequestContext
from projapp.models import *

def add_csrf(request, **kwargs):
    """Add CSRF to dictionary."""
    d = dict(user=request.user, **kwargs)
    d.update(csrf(request))
    return d

def index(request):
    return render_to_response('projapp/index.html')

def xemdiem(request):
    hoc_ky_list = HocKy.objects.all().order_by("-mhk")
    return render_to_response('projapp/xemdiem.html',{'hoc_ky_list': hoc_ky_list})

#def ketqua(request):
#    return render_to_response('projapp/ketqua.html')
def ketqua(request):
    hoc_ky=request.GET.get('hoc_ky',None)
    mssv=request.GET.get('mssv', None)
    hoc_ky_list = HocKy.objects.all().order_by("-mhk")
    if mssv is None or mssv =='':
        return render_to_response('projapp/ketqua.html', {'hoc_ky_list':hoc_ky_list,'error_message': u'Bạn chưa nhập mã số sinh viên',})
    try:
        sinhvien=SinhVien.objects.get( pk=mssv )
    except (KeyError, SinhVien.DoesNotExist):
        # Redisplay the poll voting form.
        return render_to_response('projapp/ketqua.html', {'hoc_ky_list':hoc_ky_list,'error_message': u'Không tìm thấy sinh viên ' +mssv,})
    else:
        diem_list=DanhSachDiem.objects.select_related()
        if (hoc_ky=='NULL'):
            hk_list = HocKy.objects.all().order_by("-mhk")
        else:
            hk_list = HocKy.objects.filter(mhk=hoc_ky)   
        kq=[]
        for diem in diem_list:
            if (diem.mssv_id == mssv):
                lopmonhoc=LopMonHoc.objects.select_related().get(pk=diem.mlmh_id)        
                monhoc=MonHoc.objects.get(pk=lopmonhoc.mon_hoc_id)
                hocky=HocKy.objects.get(pk=lopmonhoc.hoc_ky_id)
                kq_n=[hocky.mhk,monhoc.mmh,monhoc.ten_mh, lopmonhoc.nhom_to, diem.diem_giua_ky,diem.diem_cuoi_ky,diem.diem_tong_ket]
                kq.append(kq_n)
        return render_to_response('projapp/ketqua.html',add_csrf(request,hoc_ky_list=hoc_ky_list,hk_list=hk_list,sinhvien=sinhvien,ketqua=kq))
