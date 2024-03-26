from django.contrib import admin

# Register your models here.
from .models import Developer, User


class DeveloperAdmin(admin.ModelAdmin):
  list_display= ['id', 'full_name',  'email', 'country', 'state']

class UserAdmin(admin.ModelAdmin):
  list_display= ['email', 'first_name', 'last_name', 'country', 'state']


admin.site.register(Developer, DeveloperAdmin)

admin.site.register(User, UserAdmin)