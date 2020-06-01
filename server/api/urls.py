from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('attendees/', views.attendees, name='attendees'),
    path('courses/', views.courses, name='courses'),
]
