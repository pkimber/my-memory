Stored Procedure
****************

Generics
========

Model ``execute`` method (thank you Simon)...

::

  public Offer execute(final Offer offer) {
      final Map<String, Object> inputs = new HashMap<String, Object>();
      inputs.put(ID, offer.getId());
      inputs.put(TITLE, offer.getTitle());
      final Map<?, ?> map = super.execute(inputs);
      final List<?> offers = (List<?>) map.get(SQLResultKeys.RECORDS_KEY);
      if (offers == null || offers.isEmpty()) {
          return null;
      } else {
          return (Offer) offers.get(0);
      }
  }

Output Parameter
================

For a stored procedure which sets an output parameter e.g:

::

  ALTER PROCEDURE [dbo].[get_offer_details]
      @id INT,
      @errorMessage VARCHAR(100) OUT
  AS
  BEGIN

We can read the output parameter as follows:

::

  public class GetOfferDetailsStoredProcedure extends StoredProcedure {

      static final String ERROR_MESSAGE_KEY = "errorMessage";
      static final String RECORDS_KEY = "records";
      static final String SP_NAME = "get_offer_details";
      static final String ID = "id";

      public GetOfferDetailsStoredProcedure(final DataSource dataSource) {
          super(dataSource, SP_NAME);
          declareParameter(new SqlReturnResultSet(RECORDS_KEY,
                  new OfferRowMapper()));
          declareParameter(new SqlParameter(ID, Types.INTEGER));
          declareParameter(new SqlOutParameter(ERROR_MESSAGE_KEY,
                  Types.VARCHAR));
          compile();
      }

      public Offer execute(final long id) {
          final Map<String, Object> inputs = new HashMap<String, Object>();
          inputs.put(ID, id);
          final Map<?, ?> map = super.execute(inputs);
          final List<?> offers = (List<?>) map.get(RECORDS_KEY);
          if (offers == null || offers.size() == 0) {
              final String errorMessage = (String) map
                      .get(ERROR_MESSAGE_KEY);
              if (errorMessage != null) {
                  logger.error(errorMessage);
              }
              return null;
          } else {
              return (Offer) offers.get(0);
          }
      }
  }

Note:

- This example assumes that the error message is only set when there are no
  results returned.
- Do not use this example as a model (I am not very happy with the way we just
  log the error message).
- Have a look at `SingleColumnRowMapper`_ if only returning a single row...

SingleColumnRowMapper
=====================

Note: This code hasn't been tested yet...

::

  public class GetExternalReferenceForRewardStoredProcedure extends
          StoredProcedure {

      private static final String SP_NAME = "loyalty_get_external_reference_for_reward";
      private static final String REWARD_ID = "reward_id";
      private static final String IMPORT_SOURCE = "import_source";

      public GetExternalReferenceForRewardStoredProcedure(
              final DataSource dataSource) {
          super(dataSource, SP_NAME);
          declareParameter(new SqlReturnResultSet(SQLResultKeys.RECORDS_KEY,
                  new SingleColumnRowMapper(String.class)));
          declareParameter(new SqlParameter(REWARD_ID, Types.INTEGER));
          declareParameter(new SqlParameter(IMPORT_SOURCE, Types.VARCHAR));
          compile();
      }

      public String execute(final int rewardId, final String importSource) {
          final Map<String, Object> inputs = new HashMap<String, Object>();
          inputs.put(REWARD_ID, rewardId);
          inputs.put(IMPORT_SOURCE, importSource);
          final Map<?, ?> map = super.execute(inputs);
          final List<?> externalReferences = (List<?>) map
                  .get(SQLResultKeys.RECORDS_KEY);
          if (externalReferences == null || externalReferences.isEmpty()) {
              return null;
          } else {
              return (String) externalReferences.get(0);
          }
      }
  }


.. _`SingleColumnRowMapper`: http://static.springsource.org/spring/docs/2.0.x/api/org/springframework/jdbc/core/SingleColumnRowMapper.html

