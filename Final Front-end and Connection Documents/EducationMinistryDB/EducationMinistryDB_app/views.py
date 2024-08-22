from django.http import HttpResponse
from django.shortcuts import render
from django.template import loader
from django.db import connection

from EducationMinistryDB_app.models import School
from EducationMinistryDB_app.models import College


# Create your views here.
def index(request):
    template = loader.get_template('Index.html')
    schools = School.objects.all()
    print(schools)
    context = {
        'data': schools,
    }
    colleges = College.objects.all()
    print(colleges)
    context = {
        'data': colleges,
    }
    return HttpResponse(template.render(context, request))


def view_school_data(request):
    template = loader.get_template('ViewSchoolData.html')
    schools = School.objects.all()
    context = {
        'data': schools,
    }
    return HttpResponse(template.render(context, request))


def insert_school(request):
    template = loader.get_template('InsertSchool.html')

    context = {

    }
    return HttpResponse(template.render(context, request))


def insertSchoolData(request):
    template = loader.get_template('DisplayReply.html')
    Sid = request.POST.get("Sid")
    Sname = request.POST.get("Sname")
    Stype = request.POST.get("Stype")
    Sdata = request.POST.get("Sdate")
    Sfees = request.POST.get("Sfees")
    Steacher = request.POST.get("Steacher")
    Sstudents = request.POST.get("Sstudents")
    Smdm = request.POST.get("Smdm")

    NewEntry = School(school_id=Sid, name=Sname, type=Stype, date_of_establishment=Sdata, fees=Sfees,
                      no_of_students=Sstudents, no_of_teachers=Steacher, mid_day_meal=Smdm)
    NewEntry.save()
    print("Display:", Sid, Sname)
    success = 'Successfully Inserted'
    context = {
        "Reply": success
    }
    return HttpResponse(template.render(context, request))


def delschool(request):
    template = loader.get_template('DeleteSchool.html')

    context = {

    }
    return HttpResponse(template.render(context, request))


def deleteSchoolData(request):
    template = loader.get_template('DisplayReply.html')
    Sid = request.POST.get("Sid")
    SchoolSel = School.objects.get(school_id=Sid)
    SchoolSel.delete()
    success = 'Successfully Deleted'
    context = {
        "Reply": success
    }
    return HttpResponse(template.render(context, request))


def updateschool(request):
    template = loader.get_template('UpdateSchool.html')

    context = {

    }
    return HttpResponse(template.render(context, request))


def updateSchoolData(request):
    template = loader.get_template('DisplayReply.html')
    Sid = request.POST.get("Sid")
    Sname = request.POST.get("Sname")
    Stype = request.POST.get("Stype")
    Sdata = request.POST.get("Sdate")
    Sfees = request.POST.get("Sfees")
    Steacher = request.POST.get("Steacher")
    Sstudents = request.POST.get("Sstudents")
    Smdm = request.POST.get("Smdm")
    SchoolSel = School.objects.get(school_id=Sid)
    SchoolSel.name = Sname
    SchoolSel.type = Stype
    SchoolSel.date_of_establishment = Sdata
    SchoolSel.fees = Sfees
    SchoolSel.no_of_teachers = Steacher
    SchoolSel.no_of_students = Sstudents
    SchoolSel.mid_day_meal = Smdm
    SchoolSel.save()
    print("Display:", Sid, Sname)
    success = 'Successfully Updated'
    context = {
        "Reply": success
    }
    return HttpResponse(template.render(context, request))


def view_college_data(request):
    template = loader.get_template('ViewCollegeData.html')
    colleges = College.objects.all()
    context = {
        'data': colleges,
    }
    return HttpResponse(template.render(context, request))


def insert_college(request):
    template = loader.get_template('InsertCollege.html')

    context = {

    }
    return HttpResponse(template.render(context, request))


def insertCollegeData(request):
    template = loader.get_template('DisplayReply.html')
    Cid = request.POST.get("Cid")
    Cname = request.POST.get("Cname")
    Ctype = request.POST.get("Ctype")
    Cdata = request.POST.get("Cdate")
    Cfees = request.POST.get("Cfees")
    Cteacher = request.POST.get("Cteacher")
    Cstudents = request.POST.get("Cstudents")

    NewEntry = College(college_id=Cid, name=Cname, type=Ctype, date_of_establishment=Cdata, fees=Cfees,
                       no_of_students=Cstudents, no_of_teachers=Cteacher)
    NewEntry.save()
    print("Display:", Cid, Cname)
    success = 'Successfully Inserted'
    context = {
        "Reply": success
    }
    return HttpResponse(template.render(context, request))


def delcollege(request):
    template = loader.get_template('DeleteCollege.html')

    context = {

    }
    return HttpResponse(template.render(context, request))


def deleteCollegeData(request):
    template = loader.get_template('DisplayReply.html')
    Cid = request.POST.get("Cid")
    CollegeSel = College.objects.get(college_id=Cid)
    CollegeSel.delete()
    success = 'Successfully Deleted'
    context = {
        "Reply": success
    }
    return HttpResponse(template.render(context, request))


def updatecollege(request):
    template = loader.get_template('UpdateCollege.html')

    context = {

    }
    return HttpResponse(template.render(context, request))


def updateCollegeData(request):
    template = loader.get_template('DisplayReply.html')
    Cid = request.POST.get("Cid")
    Cname = request.POST.get("Cname")
    Ctype = request.POST.get("Ctype")
    Cdata = request.POST.get("Cdate")
    Cfees = request.POST.get("Cfees")
    Cteacher = request.POST.get("Cteacher")
    Cstudents = request.POST.get("Cstudents")
    CollegeSel = College.objects.get(college_id=Cid)
    CollegeSel.name = Cname
    CollegeSel.type = Ctype
    CollegeSel.date_of_establishment = Cdata
    CollegeSel.fees = Cfees
    CollegeSel.no_of_teachers = Cteacher
    CollegeSel.no_of_students = Cstudents
    CollegeSel.save()
    print("Display:", Cid, Cname)
    success = 'Successfully Updated'
    context = {
        "Reply": success
    }
    return HttpResponse(template.render(context, request))
