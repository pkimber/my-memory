Ansible Quickstart
******************

.. highlight:: bash

- `Working With Playbooks - Best Practices`_

Create and activate a virtual environment::

  python3 -m venv venv
  source venv/bin/activate.fish

Install Ansible::

  pip install ansible

Create an ``inventory.yml`` file listing your hosts e.g::

  [servers]
  122.122.222.49 ansible_user=root

Create a Playbook (in YAML format) e.g:

.. code-block:: yaml

  # example_1.yml
  ---
  
  - name: Network Getting Started First Playbook
    hosts: all
    tasks:
  
      - name: Hello - I will Execute the command in remote shell; stdout goes to the specified file on the remote
        ansible.builtin.shell: echo 'Hello Patrick'
  
      - name: Touch a file, using symbolic modes to set the permissions (equivalent to 0644)
        ansible.builtin.file:
          path: /root/patrick.json
          state: touch
          mode: u=rw,g=r,o=r
  
      - name: Create a directory if it does not exist
        ansible.builtin.file:
          path: /root/patrick
          state: directory
          mode: '0755'

.. tip:: The ``ansible.builtin.file module`` is one of many modules.
         For documentation, see `Manage files and file properties`_

To execute this Playbook::

  ansible-playbook example_1.yml -i inventory.yml


.. _`Manage files and file properties`: https://docs.ansible.com/ansible/latest/collections/ansible/builtin/file_module.html#examples
.. _`Working With Playbooks - Best Practices`: https://docs.ansible.com/ansible/2.8/user_guide/playbooks_best_practices.html
