from django.db import models
from django.contrib.auth.models import Group, Permission


# Create your models here.
#useless
from django.contrib.auth.models import AbstractUser, AbstractBaseUser
from django.db import models


class Developer(AbstractBaseUser):
  
  full_name = models.CharField(max_length=100,)
  email = models.EmailField(max_length=255, unique=True, )
  state = models.CharField(max_length=100)
  country = models.CharField(max_length=100)
#useless
  




from django.contrib.auth.models import AbstractBaseUser, BaseUserManager

class CustomUserManager(BaseUserManager):
    def create_user(self, email, password, **extra_fields):
        if not email:
            raise ValueError('The Email field must be set')
        email = self.normalize_email(email)
        user = self.model(email=email,
                           password=password,   #added
                             **extra_fields)
        # user.set_password(password)
        user.save(using=self._db)
        return user

class AbstractBaseUserModel(AbstractBaseUser):
    email = models.EmailField(unique=True)
    

    objects = CustomUserManager()

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = []

    class Meta:
        abstract = True


# accounts/models.py

class User(AbstractBaseUserModel):
    password = models.CharField(max_length=100)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    country = models.CharField(max_length=30, default='Nigeria')
    state = models.CharField(max_length=30, default='Lagos')

