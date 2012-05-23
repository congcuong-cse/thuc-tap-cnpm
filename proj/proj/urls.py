from django.conf.urls import patterns, include, url
from proj.settings import MEDIA_ROOT, STATIC_ROOT

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'proj.views.home', name='home'),
    # url(r'^proj/', include('proj.foo.urls')),
    
    url(r'^home/',include ('projapp.urls')),
    
    url(r'^forum/', include('forum.urls')),
    url(r'^accounts/', include('registration.urls')),

    url(r'^media/(?P<path>.*)$', 'django.views.static.serve',{'document_root': MEDIA_ROOT}),
    url(r'^static/(?P<path>.*)$', 'django.views.static.serve',{'document_root': STATIC_ROOT}),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
)
