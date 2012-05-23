from django.contrib import admin
from projapp.models import DanhSachDiem,GiangVien, HocKy,LopMonHoc,MonHoc,SinhVien


class GiangVienAdmin(admin.ModelAdmin):
    list_display = ('mgv', 'ten_gv','ngay_sinh','email')

class SinhVienAdmin(admin.ModelAdmin):
    list_display = ('mssv', 'ten_sv','gioi_tinh','ngay_sinh','khoa','nganh','email')
    list_filter = ['khoa','nganh']

class HocKyAdmin(admin.ModelAdmin):
    list_display = ('mhk', 'ten_hk')

class MonHocAdmin(admin.ModelAdmin):
    list_display = ('mmh', 'ten_mh')

#class LopMonHocAdmin(admin.ModelAdmin):
#    list_display = ('hoc_ky', 'mon_hoc', 'nhom_to', 'giang_vien')
#    list_filter = ['hoc_ky', 'mon_hoc', 'giang_vien']
#
#class DanhSachDiemAdmin(admin.ModelAdmin):
#    list_display = ('mlmh', 'mssv','diem_giua_ky', 'diem_cuoi_ky', 'diem_tong_ket')
#    list_filter = ['mlmh']
#    
class DanhSachDiemInline(admin.TabularInline):
    model = DanhSachDiem
    extra = 3
class LopMonHocAdmin(admin.ModelAdmin):
    fieldsets = [
        (None,{'fields': ['hoc_ky','mon_hoc','nhom_to']}),
        (None,{'fields':['giang_vien']}),
    ]
    inlines=[DanhSachDiemInline]
    list_display = ('hoc_ky', 'mon_hoc', 'nhom_to', 'giang_vien')
    list_filter = ['hoc_ky', 'mon_hoc', 'giang_vien']



admin.site.register(GiangVien,GiangVienAdmin)
admin.site.register(SinhVien,SinhVienAdmin)
admin.site.register(MonHoc,MonHocAdmin)
admin.site.register(HocKy,HocKyAdmin)
admin.site.register(LopMonHoc,LopMonHocAdmin)
#admin.site.register(DanhSachDiem,DanhSachDiemAdmin)



