from django.db import models


class Group(models.Model):
    name = models.CharField(db_index=True, max_length=64)
    
    def __str__(self):
        return f'{self.name}'
