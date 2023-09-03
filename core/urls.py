from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from django.views.generic import TemplateView
from API import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', TemplateView.as_view(template_name='index.html')),
    path('api/', include('API.urls', namespace='ImageAPI')),
    path('prediction/', views.prediction, name='prediction')
]

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)