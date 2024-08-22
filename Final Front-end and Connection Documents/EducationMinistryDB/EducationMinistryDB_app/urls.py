"""EducationMinistryDB URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path

from EducationMinistryDB_app import views

urlpatterns = [
    path('', views.index, name='index'),
    path('insert_school', views.insert_school, name='insert_school'),
    path('view_school_data', views.view_school_data, name='view_school_data'),
    path('insertSchoolData/', views.insertSchoolData, name='insertSchoolData'),
    path('delschool', views.delschool, name='delschool'),
    path('deleteSchoolData/', views.deleteSchoolData, name='deleteSchoolData'),
    path('updateschool', views.updateschool, name='updateschool'),
    path('updateSchoolData/', views.updateSchoolData, name='updateSchoolData'),
    path('insert_college', views.insert_college, name='insert_college'),
    path('view_college_data', views.view_college_data, name='view_college_data'),
    path('insertCollegeData/', views.insertCollegeData, name='insertCollegeData'),
    path('delcollege', views.delcollege, name='delcollege'),
    path('deleteCollegeData/', views.deleteCollegeData, name='deleteCollegeData'),
    path('updatecollege', views.updatecollege, name='updatecollege'),
    path('updateCollegeData/', views.updateCollegeData, name='updateCollegeData'),
]
