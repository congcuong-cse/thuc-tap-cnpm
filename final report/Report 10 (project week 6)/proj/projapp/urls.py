from django.conf.urls import patterns, include, url

urlpatterns = patterns('projapp.views',
    # Examples:
    # url(r'^$', 'Demo.views.home', name='home'),
    # url(r'^Demo/', include('Demo.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    # url(r'^admin/', include(admin.site.urls)),s
    url(r'^$','index'),
    
    url(r'^xemdiem/$', 'xemdiem'),
    url(r'^ketqua/$','ketqua'),
    
    url(r'^giangvien/$','giangvien'),
    url(r'^giangvien/diemlop/$','diemlop'),
    url(r'^giangvien/diemlop/ketqua/$','ketqua_diemlop'),
    
    url(r'^sinhvien/$','sinhvien'),
    url(r'^sinhvien/diemsinhvien/$','diemsinhvien'),
    url(r'^sinhvien/diemsinhvien/ketqua/$','ketqua_diemsinhvien'),

)
