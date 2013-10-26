SFTP
****

::

  sudo vim /etc/ssh/sshd_config

Changes to make to ``sshd_config`` (notes after this section):

::

  ChallengeResponseAuthentication yes

  # Subsystem sftp /usr/lib/openssh/sftp-server

  # http://www.debian-administration.org/articles/590
  Subsystem sftp internal-sftp

  # http://knowledgelayer.softlayer.com/learning/how-do-i-permit-specific-users-ssh-access
  AllowGroups sshlogin sftponly

  # http://serverfault.com/questions/154957/set-up-sftp-to-use-password-but-ssh-not-to-use-password
  Match Group sftponly
      PasswordAuthentication yes
      ChrootDirectory /srv/sftp/%u
      X11Forwarding no
      AllowTcpForwarding no
      ForceCommand internal-sftp

  Match Group sshlogin
      PasswordAuthentication no

Note
----

- I had to use ``ChallengeResponseAuthentication`` when using port forwarding through my router.
- Comment out ``sftp-server`` and use ``internal-sftp`` instead.
- A user must be in the ``sshlogin`` group if they want to use ``ssh``.
- A user must be in the ``sftponly`` group if they want to use ``sftp``.
  A user shouldn't be in both groups.
- ``Match`` blocks must be at the end of the file.
- I don't want standard ``ssh`` user to be able to login using passwords.

To check the ``ssh`` configuration:

::

  sshd -t

I think we can ignore the ``Could not load host key`` errors?

::

  sudo addgroup sshlogin
  sudo addgroup sftponly

For all the users who need access to ``ssh``:

::

  sudo adduser patrick sshlogin

Set-up folders for ``sftp``:

::

  sudo mkdir /srv/sftp/
  sudo chown root:root /srv /srv/sftp
  sudo chmod 755 /srv /srv/sftp


For users who need access to ``sftp`` (only):

::

  sudo adduser username sftponly

  # sftp folders
  sudo mkdir /srv/sftp/username
  sudo chown root:root /srv/sftp/username/
  sudo chmod 755 /srv/sftp/username/

  # upload folder
  sudo mkdir /srv/sftp/username/upload
  sudo chown username:username /srv/sftp/username/upload/

  # modify an existing user
  sudo usermod -g sftponly -d /srv/sftp/username -s /sbin/nologin username

Note: The user can only upload files to the ``upload`` folder (or a folder
where they have write permission).  I don't think ``sftp`` will be happy if we
change permissions on the ``/srv/sftp/username`` folder.
