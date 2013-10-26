Location
********

Emulator
========

To set *my location* in Eclipse, switch to the *DDMS* perspective, select the
*Emulator Control* tab and use the *Location Controls* to set the location.

To set *my location* to our home, set *Longitude* to -4.082386 and *Latitude*
to 50.827206, then click *Send*...

Setup
=====

Add the following to your application manifest file:

::

  <uses-permission
      android:name="android.permission.ACCESS_COARSE_LOCATION" />
  <uses-permission
      android:name="android.permission.ACCESS_FINE_LOCATION" />

Sample
======

To get the users current location:

::

  private Location getLocation() {
      Location result = null;
      final LocationManager locationManager = getLocationManager();
      final String provider = locationManager.getBestProvider(
              getLocationProviderCriteria(), true);
      Log.i(TAG, MessageFormat.format("provider, {0}", provider));
      if (provider != null) {
          result = locationManager.getLastKnownLocation(provider);
          if (result == null) {
              Log.e(TAG, "cannot get last known location.");
          } else {
              Log.i(TAG, MessageFormat.format(
                      "last known location, latitude {0} longitude {1}",
                      result.getLatitude(), result.getLongitude()));
          }
      }
      return result;
  }

  private LocationManager getLocationManager() {
      return (LocationManager) getSystemService(Context.LOCATION_SERVICE);
  }
