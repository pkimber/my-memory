ManyToManyField
***************

.. highlight:: python

::

  class DatabaseModule(models.Model):

      code = models.CharField(max_length=10)
      description = models.CharField(max_length=100)

      def __unicode__(self):
          return '%s %s' % (self.code, self.description,)

      class Meta:
          verbose_name = 'Database Module Type'
          verbose_name_plural = 'Database Module Types'


  class DatabaseConfig(models.Model):

      description = models.CharField(max_length=100)
      database_name = models.CharField(max_length=100)
      modules = models.ManyToManyField(DatabaseModule)

      def __unicode__(self):
          return '%s %s' % (self.database_name, self.description,)

      class Meta:
          ordering = ['database_name']
          verbose_name = 'Database Configuration'
          verbose_name_plural = 'Database Configurations'

add
===

To add a model instance (or primary key) to a many to many field::

  config.modules.add(module)

  # modules is a list of modules
  config.modules.add(*modules)

.. warning:: I think the ``add`` method allows you to add an object instance or
             a primary key.  If you try and add an invalid primary key, the
             ``add`` method will fail silently!!  I can't find this in the
             official documents, but it is hinted at here: django_conduit_

through
=======

.. warning:: Do not use soft deletes for the ``through`` table if you want to
             use it in a ``filter`` e.g. ``department__in=[dept1, dept2]``.
             The filter will **not** exclude the deleted rows.

Example::

  # model
  department = models.ManyToManyField(
      Category,
      related_name='contact_department',
      through='ContactDepartment',
  )

  def add_department(self, category):
      return ContactDepartment.objects.init_contact_category(
          self,
          category,
      )
  def update_department(self, categories, user):
      ContactDepartment.objects.update_categories(
          self, categories, user
      )

In this example, ``ContactDepartment`` is inherited from ``ContactCategory``::

  class ContactCategoryManager(models.Manager):

      def categories(self, contact):
          return self.model.objects.filter(contact=contact)

      def create_contact_category(self, contact, category):
          obj = self.model(contact=contact, category=category)
          obj.save()
          return obj

      def init_contact_category(self, contact, category):
          try:
              obj = self.model.objects.get(contact=contact, category=category)
          except self.model.DoesNotExist:
              obj = self.create_contact_category(contact, category)
          return obj

      def update_categories(self, contact, categories, user):
          for category in categories:
              self.init_contact_category(contact, category)
          self.model.objects.filter(
              contact=contact,
          ).exclude(
              category__in=categories,
          ).delete()


  class ContactDepartmentManager(ContactCategoryManager):
      pass


  class ContactCategory(TimeStampedModel):
      """Abstract model for 'contact', 'category' tables."""

      contact = models.ForeignKey(Contact)
      category = models.ForeignKey(Category)

      class Meta:
          abstract = True

      def __str__(self):
          return '{} {}'.format(self.contact.user.username, self.category.name)


  class ContactDepartment(ContactCategory):

      objects = ContactDepartmentManager()

      class Meta:
          ordering = ['contact__user__username', 'category__name']
          unique_together = ['contact', 'category']
          verbose_name = 'Contact department'
          verbose_name_plural = 'Contact departments'
