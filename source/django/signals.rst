Signals
*******

::

  from django.db import models
  from django.db.models.signals import post_delete
  from django.db.models.signals import post_save
  from django.dispatch import receiver

  class VillageModel(models.Model):
      name = models.CharField(
          max_length=45,
          unique=True
      )
      population = models.IntegerField()

  @receiver(post_delete, sender=VillageModel)
  def village_delete_signal(sender, **kwargs):
      # 'raw' is 'True' if this save is triggered by loading of test fixtures.
      raw = kwargs.get('raw', None)
      if not raw:
          village = kwargs['instance']
          update_total(village)

  @receiver(post_save, sender=VillageModel)
  def village_save_signal(sender, **kwargs):
      # 'raw' is 'True' if this save is triggered by loading of test fixtures.
      raw = kwargs.get('raw', None)
      if not raw:
          village = kwargs['instance']
          update_total(village)

  def update_total(village)
      ...

