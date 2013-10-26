DELIMITER $$

DROP PROCEDURE IF EXISTS curdemo
$$

CREATE PROCEDURE curdemo()
BEGIN
  DECLARE done INT DEFAULT 0;
  DECLARE itemId VARCHAR(20);
  DECLARE originalDate DATETIME;
  DECLARE collectionDate DATETIME;
  DECLARE cursorItemLocations CURSOR FOR
    SELECT id, timeStamp
      FROM item_locations
      WHERE id IN (
        SELECT contentID FROM item_collection_manifest_contents WHERE completed = 'Y'
      );
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

  OPEN cursorItemLocations;

  read_loop: LOOP
    FETCH cursorItemLocations INTO itemId, originalDate;
    IF done THEN
      LEAVE read_loop;
    END IF;

    SELECT item_collection_manifests.dateOfCollection INTO collectionDate
      FROM item_collection_manifests
      INNER JOIN item_collection_manifest_contents
        ON item_collection_manifest_contents.id = item_collection_manifests.id
      WHERE item_collection_manifest_contents.completed = 'Y'
        AND item_collection_manifest_contents.contentID = itemId;
    IF collectionDate IS NULL
    THEN
      SELECT itemId, originalDate, collectionDate, 'IS NULL';
    ELSE
      INSERT INTO x_issue_95_item_location_manifest_date
        (itemId, originalDate, collectionDate)
      VALUES
        (itemId, originalDate, collectionDate);
      -- SELECT itemId, originalDate, collectionDate;
      UPDATE item_locations
        SET timeStamp = collectionDate
        WHERE id = itemId;
    END IF;
  END LOOP;

  CLOSE cursorItemLocations;
END
$$

CALL curdemo
$$

DROP PROCEDURE IF EXISTS curdemo
$$

DELIMITER ;
