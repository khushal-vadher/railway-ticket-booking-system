from django.contrib import admin

# Register your models here.
from .models import trainDetails
from .models import ticketDetail
# #

admin.site.register(trainDetails)
admin.site.register(ticketDetail)