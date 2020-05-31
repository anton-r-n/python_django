from django.db import models
from django.conf import settings


class Institution(models.Model):
    name = models.CharField(max_length=50)


class Instructor(models.Model):
    name = models.CharField(max_length=255)
    title = models.CharField(max_length=50)


class Course(models.Model):
    code = models.CharField(max_length=50)
    title = models.CharField(max_length=255)
    institution = models.ForeignKey(
        Institution,
        on_delete=models.CASCADE,
    )


class Schedule(models.Model):
    course = models.ForeignKey(
        Course,
        on_delete=models.CASCADE,
    )
    instructor = models.ForeignKey(
        Instructor,
        null=True,
        on_delete=models.SET_NULL,
    )
    date_start = models.DateField()
    time_start = models.TimeField()


class Attendee(models.Model):
    user = models.ForeignKey(
        settings.AUTH_USER_MODEL,
        on_delete=models.CASCADE,
    )
    schedule = models.ForeignKey(
        Schedule,
        on_delete=models.CASCADE,
    )
