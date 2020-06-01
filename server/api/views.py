import json

from django.http import HttpResponse

from . import models

MAX_RECORDS = 50


def json_response(content):
    response = HttpResponse(json.dumps(content, indent=2) + '\n')
    response['Content-Type'] = 'application/json'
    return response


def index(request):
    return HttpResponse('Hello server API\n')


def courses(request):
    base = models.Course.objects

    if 'query' in request.GET:
        records = base.filter(code__contains=request.GET['query'])
    else:
        records = base.all()

    fields = records.values('code', 'title', 'institution__name')
    return json_response(list(fields[:MAX_RECORDS]))


def attendees(request):
    base = models.Attendee.objects

    if 'query' not in request.GET:
        return json_response([])

    records = base.filter(schedule__course__code=request.GET['query'])
    fields = records.values('user__first_name', 'user__last_name',
                            'user__email')
    return json_response(list(fields[:MAX_RECORDS]))
