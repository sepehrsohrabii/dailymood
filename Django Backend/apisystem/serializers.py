from django.contrib.auth.models import User, Group
from apisystem.models import UserMood
from rest_framework import serializers


class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = User
        fields = ['url', 'username', 'email', 'groups']


class GroupSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Group
        fields = ['url', 'name']

class UserMoodSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = UserMood
        fields = ['user', 'dateTime', 'mood']