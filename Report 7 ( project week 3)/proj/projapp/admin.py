from django.contrib import admin
from projapp.models import GIANG_VIEN, SINH_VIEN, MON_HOC, HOC_KY, LOP_MON_HOC,DANH_SACH_DIEM
admin.site.register(GIANG_VIEN)
admin.site.register(SINH_VIEN)
admin.site.register(MON_HOC)
admin.site.register(HOC_KY)
admin.site.register(LOP_MON_HOC)
admin.site.register(DANH_SACH_DIEM)

#from projapp.models import HOC_KY, LOP_MON_HOC, DANH_SACH_DIEM




#admin.site.register(HOC_KY, LOP_MON_HOC, DANH_SACH_DIEM)
