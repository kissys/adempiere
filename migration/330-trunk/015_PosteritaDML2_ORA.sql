-- ad_Window Changes --

INSERT INTO AD_WINDOW(AD_WINDOW_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, WINDOWTYPE, ISSOTRX, ENTITYTYPE, PROCESSING, AD_IMAGE_ID, AD_COLOR_ID, ISDEFAULT, WINHEIGHT, WINWIDTH, ISBETAFUNCTIONALITY)
  VALUES(52000, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Posterita Web Menu', 'To dynamically generate the menu links in posterita', NULL, 'M', 'Y', 'D', 'N', NULL, NULL, 'N', 0, 0, 'N');
INSERT INTO AD_WINDOW(AD_WINDOW_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, WINDOWTYPE, ISSOTRX, ENTITYTYPE, PROCESSING, AD_IMAGE_ID, AD_COLOR_ID, ISDEFAULT, WINHEIGHT, WINWIDTH, ISBETAFUNCTIONALITY)
  VALUES(52001, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Posterita Role Menu', 'Depending on Which Role, Different set of Menus are generated and made available.', NULL, 'M', 'Y', 'D', 'N', NULL, NULL, 'N', 0, 0, 'N');
INSERT INTO AD_WINDOW(AD_WINDOW_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, WINDOWTYPE, ISSOTRX, ENTITYTYPE, PROCESSING, AD_IMAGE_ID, AD_COLOR_ID, ISDEFAULT, WINHEIGHT, WINWIDTH, ISBETAFUNCTIONALITY)
  VALUES(52002, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Posterita Web Properties', 'Stores the message tags to be picked up from AD_MESSAGE ', NULL, 'M', 'Y', 'D', 'N', NULL, NULL, 'N', 0, 0, 'N');
INSERT INTO AD_WINDOW(AD_WINDOW_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, WINDOWTYPE, ISSOTRX, ENTITYTYPE, PROCESSING, AD_IMAGE_ID, AD_COLOR_ID, ISDEFAULT, WINHEIGHT, WINWIDTH, ISBETAFUNCTIONALITY)
  VALUES(52003, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Posterita BlackListCheque', 'Black Listed Cheque', NULL, 'M', 'Y', 'D', 'N', NULL, NULL, 'N', 0, 0, 'N');
--- ad_Tab Changes ---
INSERT INTO AD_TAB(AD_TAB_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, AD_TABLE_ID, AD_WINDOW_ID, SEQNO, TABLEVEL, ISSINGLEROW, ISINFOTAB, ISTRANSLATIONTAB, ISREADONLY, AD_COLUMN_ID, HASTREE, WHERECLAUSE, ORDERBYCLAUSE, COMMITWARNING, AD_PROCESS_ID, PROCESSING, AD_IMAGE_ID, IMPORTFIELDS, AD_COLUMNSORTORDER_ID, AD_COLUMNSORTYESNO_ID, ISSORTTAB, ENTITYTYPE, INCLUDED_TAB_ID, READONLYLOGIC, DISPLAYLOGIC, ISINSERTRECORD, ISADVANCEDTAB)
  VALUES(52000, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Web Menu', 'To dynamically generate the menu links in posterita', NULL, 52003, 52000, 10, 0, 'N', 'N', 'N', 'N', NULL, 'N', NULL, NULL, NULL, NULL, 'N', NULL, 'N', NULL, NULL, 'N', 'D', NULL, NULL, NULL, 'Y', 'N');
INSERT INTO AD_TAB(AD_TAB_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, AD_TABLE_ID, AD_WINDOW_ID, SEQNO, TABLEVEL, ISSINGLEROW, ISINFOTAB, ISTRANSLATIONTAB, ISREADONLY, AD_COLUMN_ID, HASTREE, WHERECLAUSE, ORDERBYCLAUSE, COMMITWARNING, AD_PROCESS_ID, PROCESSING, AD_IMAGE_ID, IMPORTFIELDS, AD_COLUMNSORTORDER_ID, AD_COLUMNSORTYESNO_ID, ISSORTTAB, ENTITYTYPE, INCLUDED_TAB_ID, READONLYLOGIC, DISPLAYLOGIC, ISINSERTRECORD, ISADVANCEDTAB)
  VALUES(52001, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Role Menu', 'Depending on Which Role, Different set of Menus are generated and made available.', NULL, 52002, 52001, 10, 0, 'N', 'N', 'N', 'N', NULL, 'N', NULL, NULL, NULL, NULL, 'N', NULL, 'N', NULL, NULL, 'N', 'D', NULL, NULL, NULL, 'Y', 'N');
INSERT INTO AD_TAB(AD_TAB_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, AD_TABLE_ID, AD_WINDOW_ID, SEQNO, TABLEVEL, ISSINGLEROW, ISINFOTAB, ISTRANSLATIONTAB, ISREADONLY, AD_COLUMN_ID, HASTREE, WHERECLAUSE, ORDERBYCLAUSE, COMMITWARNING, AD_PROCESS_ID, PROCESSING, AD_IMAGE_ID, IMPORTFIELDS, AD_COLUMNSORTORDER_ID, AD_COLUMNSORTYESNO_ID, ISSORTTAB, ENTITYTYPE, INCLUDED_TAB_ID, READONLYLOGIC, DISPLAYLOGIC, ISINSERTRECORD, ISADVANCEDTAB)
  VALUES(52002, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Web Properties', 'Stores the message tags to be picked up from AD_MESSAGE ', NULL, 52001, 52002, 10, 0, 'N', 'N', 'N', 'Y', NULL, 'N', NULL, NULL, NULL, NULL, 'N', NULL, 'N', NULL, NULL, 'N', 'D', NULL, NULL, NULL, 'N', 'N');
INSERT INTO AD_TAB(AD_TAB_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, AD_TABLE_ID, AD_WINDOW_ID, SEQNO, TABLEVEL, ISSINGLEROW, ISINFOTAB, ISTRANSLATIONTAB, ISREADONLY, AD_COLUMN_ID, HASTREE, WHERECLAUSE, ORDERBYCLAUSE, COMMITWARNING, AD_PROCESS_ID, PROCESSING, AD_IMAGE_ID, IMPORTFIELDS, AD_COLUMNSORTORDER_ID, AD_COLUMNSORTYESNO_ID, ISSORTTAB, ENTITYTYPE, INCLUDED_TAB_ID, READONLYLOGIC, DISPLAYLOGIC, ISINSERTRECORD, ISADVANCEDTAB)
  VALUES(52003, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'BlackListCheque', 'Black Listed Cheque', NULL, 52000, 52003, 10, 0, 'N', 'N', 'N', 'N', NULL, 'N', NULL, NULL, NULL, NULL, 'N', NULL, 'N', NULL, NULL, 'N', 'D', NULL, NULL, NULL, 'Y', 'N');

-- AD_Field Changes --

INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52008, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Args', NULL, NULL, 'Y', 425, 52069, NULL, 'Y', NULL, 60, 'N', 210, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52009, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'ClassName', NULL, NULL, 'Y', 425, 52068, NULL, 'Y', NULL, 60, 'N', 200, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52010, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'UserPIN', NULL, NULL, 'Y', 118, 52066, NULL, 'Y', NULL, 20, 'N', 120, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52011, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'AmountRefunded', NULL, NULL, 'Y', 186, 52065, NULL, 'Y', NULL, 22, 'N', NULL, NULL, 'Y', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52012, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'AmountTendered', NULL, NULL, 'Y', 186, 52064, NULL, 'Y', NULL, 22, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52013, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Terminal', NULL, NULL, 'Y', 186, 52070, NULL, 'Y', NULL, 10, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52014, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'OrderType', NULL, NULL, 'Y', 186, 52063, NULL, 'Y', NULL, 510, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52015, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Group1', NULL, NULL, 'Y', 180, 52061, NULL, 'Y', NULL, 50, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52016, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Group2', NULL, NULL, 'Y', 180, 52062, NULL, 'Y', NULL, 50, 'N', NULL, NULL, 'Y', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52017, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'CashDrawer', NULL, NULL, 'Y', 676, 52058, NULL, 'Y', NULL, 20, 'N', NULL, NULL, 'Y', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52018, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'UserDiscount', NULL, NULL, 'Y', 119, 52067, NULL, 'Y', NULL, 22, 'N', 100, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52019, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Client', 'Client/Tenant for this installation.', 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', 'Y', 52000, 52042, NULL, 'Y', NULL, 22, 'N', 10, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52020, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Organization', 'Organizational entity within client', 'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', 'Y', 52000, 52043, NULL, 'Y', NULL, 22, 'N', 20, NULL, 'Y', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52021, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Category', NULL, NULL, 'Y', 52000, 52060, NULL, 'Y', NULL, 120, 'N', 60, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52022, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Description', 'Optional short description of the record', 'A description is limited to 255 characters.', 'Y', 52000, 52054, NULL, 'Y', NULL, 200, 'N', 40, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52023, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'HasSubMenu', NULL, NULL, 'Y', 52000, 52053, NULL, 'Y', NULL, 1, 'N', 70, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52024, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Comment/Help', 'Comment or Hint', 'The Help field contains a hint, comment or help about the use of this item.', 'Y', 52000, 52057, NULL, 'Y', NULL, 2000, 'N', 50, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52025, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'ImageLink', NULL, NULL, 'Y', 52000, 52055, NULL, 'Y', NULL, 510, 'N', 90, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52026, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Active', 'The record is active in the system', 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', 'Y', 52000, 52044, NULL, 'Y', NULL, 1, 'N', 80, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52027, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'MenuLink', NULL, NULL, 'Y', 52000, 52050, NULL, 'Y', NULL, 510, 'N', 100, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52028, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Module', NULL, NULL, 'Y', 52000, 52051, NULL, 'Y', NULL, 120, 'N', 110, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52029, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Name', 'Alphanumeric identifier of the entity', 'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', 'Y', 52000, 52049, NULL, 'Y', NULL, 120, 'N', 30, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52030, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'ParentMenu_ID', NULL, NULL, 'Y', 52000, 52052, NULL, 'Y', NULL, 10, 'N', 120, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52031, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Position', NULL, NULL, 'Y', 52000, 52056, NULL, 'Y', NULL, 10, 'N', 130, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52032, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Sequence', NULL, NULL, 'Y', 52000, 52059, NULL, 'Y', NULL, 22, 'N', 140, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52033, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'U_WebMenu_ID', NULL, NULL, 'Y', 52000, 52041, NULL, 'N', NULL, 22, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52034, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Client', 'Client/Tenant for this installation.', 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', 'Y', 52001, 52032, NULL, 'Y', NULL, 22, 'N', 10, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52035, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Organization', 'Organizational entity within client', 'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', 'Y', 52001, 52033, NULL, 'Y', NULL, 22, 'N', 20, NULL, 'Y', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52036, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Role', 'Responsibility Role', 'The Role determines security and access a user who has this Role will have in the System.', 'Y', 52001, 52039, NULL, 'Y', NULL, 10, 'N', 40, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52037, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Active', 'The record is active in the system', 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', 'Y', 52001, 52034, NULL, 'Y', NULL, 1, 'N', 50, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52038, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'U_RoleMenu_ID', NULL, NULL, 'Y', 52001, 52031, NULL, 'N', NULL, 22, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52039, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'U_WebMenu_ID', NULL, NULL, 'Y', 52001, 52040, NULL, 'Y', NULL, 10, 'N', 30, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52040, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Client', 'Client/Tenant for this installation.', 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', 'Y', 52002, 52022, NULL, 'Y', NULL, 22, 'N', 30, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52041, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Organization', 'Organizational entity within client', 'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', 'Y', 52002, 52023, NULL, 'Y', NULL, 22, 'N', 20, NULL, 'Y', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52042, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Active', 'The record is active in the system', 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', 'Y', 52002, 52024, NULL, 'Y', NULL, 1, 'N', 10, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52043, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'U_Key', NULL, NULL, 'Y', 52002, 52029, NULL, 'Y', NULL, 240, 'N', 40, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52044, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'U_Value', NULL, NULL, 'Y', 52002, 52030, NULL, 'Y', NULL, 240, 'N', 50, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52045, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'U_Web_Properties_ID', NULL, NULL, 'Y', 52002, 52021, NULL, 'N', NULL, 22, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52046, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Client', 'Client/Tenant for this installation.', 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', 'Y', 52003, 52012, NULL, 'Y', NULL, 22, 'N', 10, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52047, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Organization', 'Organizational entity within client', 'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', 'Y', 52003, 52013, NULL, 'Y', NULL, 22, 'N', 20, NULL, 'Y', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52048, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'BankName', NULL, NULL, 'Y', 52003, 52019, NULL, 'Y', NULL, 120, 'N', 30, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52049, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'ChequeNo', NULL, NULL, 'Y', 52003, 52020, NULL, 'Y', NULL, 120, 'N', 40, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52050, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Active', 'The record is active in the system', 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', 'Y', 52003, 52014, NULL, 'Y', NULL, 1, 'N', 50, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO AD_FIELD(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
  VALUES(52051, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'U_BlackListCheque_ID', NULL, NULL, 'Y', 52003, 52011, NULL, 'N', NULL, 22, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);

-- AD_WindowAccess Changes --
INSERT INTO AD_WINDOW_ACCESS(AD_WINDOW_ID, AD_ROLE_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, ISREADWRITE)
  VALUES(52000, 0, 0, 0, 'Y', sysdate, 0, sysdate, 0, 'Y');
INSERT INTO AD_WINDOW_ACCESS(AD_WINDOW_ID, AD_ROLE_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, ISREADWRITE)
  VALUES(52001, 50001, 0, 0, 'Y', sysdate, 0, sysdate, 0, 'Y');
INSERT INTO AD_WINDOW_ACCESS(AD_WINDOW_ID, AD_ROLE_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, ISREADWRITE)
  VALUES(52001, 103, 11, 0, 'Y', sysdate, 100, sysdate, 100, 'Y');
INSERT INTO AD_WINDOW_ACCESS(AD_WINDOW_ID, AD_ROLE_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, ISREADWRITE)
  VALUES(52001, 102, 11, 0, 'Y', sysdate, 100, sysdate, 100, 'Y');
INSERT INTO AD_WINDOW_ACCESS(AD_WINDOW_ID, AD_ROLE_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, ISREADWRITE)
  VALUES(52002, 103, 11, 0, 'Y', sysdate, 100, sysdate, 100, 'Y');
INSERT INTO AD_WINDOW_ACCESS(AD_WINDOW_ID, AD_ROLE_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, ISREADWRITE)
  VALUES(52002, 50001, 0, 0, 'Y', sysdate, 0, sysdate, 0, 'Y');
INSERT INTO AD_WINDOW_ACCESS(AD_WINDOW_ID, AD_ROLE_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, ISREADWRITE)
  VALUES(52002, 102, 11, 0, 'Y', sysdate, 100, sysdate, 100, 'Y');
INSERT INTO AD_WINDOW_ACCESS(AD_WINDOW_ID, AD_ROLE_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, ISREADWRITE)
  VALUES(52003, 50001, 0, 0, 'Y', sysdate, 0, sysdate, 0, 'Y');
INSERT INTO AD_WINDOW_ACCESS(AD_WINDOW_ID, AD_ROLE_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, ISREADWRITE)
  VALUES(52003, 103, 11, 0, 'Y', sysdate, 100, sysdate, 100, 'Y');
INSERT INTO AD_WINDOW_ACCESS(AD_WINDOW_ID, AD_ROLE_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, ISREADWRITE)
  VALUES(52003, 102, 11, 0, 'Y', sysdate, 100, sysdate, 100, 'Y');


-- AD_Menu Changes --
INSERT INTO AD_MENU(AD_MENU_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, NAME, UPDATEDBY, DESCRIPTION, ISSUMMARY, ISSOTRX, ISREADONLY, ACTION, AD_WINDOW_ID, AD_WORKFLOW_ID, AD_TASK_ID, AD_PROCESS_ID, AD_FORM_ID, AD_WORKBENCH_ID, ENTITYTYPE)
  VALUES(52002, 0, 0, 'Y', sysdate, 100, sysdate, 'Web Menu', 100, 'To dynamically generate the menu links in posterita', 'N', 'N', 'N', 'W', 52000, NULL, NULL, NULL, NULL, NULL, 'D');
INSERT INTO AD_MENU(AD_MENU_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, NAME, UPDATEDBY, DESCRIPTION, ISSUMMARY, ISSOTRX, ISREADONLY, ACTION, AD_WINDOW_ID, AD_WORKFLOW_ID, AD_TASK_ID, AD_PROCESS_ID, AD_FORM_ID, AD_WORKBENCH_ID, ENTITYTYPE)
  VALUES(52003, 0, 0, 'Y', sysdate, 100, sysdate, 'Role Menu', 100, NULL, 'N', 'N', 'N', 'W', 52001, NULL, NULL, NULL, NULL, NULL, 'D');
INSERT INTO AD_MENU(AD_MENU_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, NAME, UPDATEDBY, DESCRIPTION, ISSUMMARY, ISSOTRX, ISREADONLY, ACTION, AD_WINDOW_ID, AD_WORKFLOW_ID, AD_TASK_ID, AD_PROCESS_ID, AD_FORM_ID, AD_WORKBENCH_ID, ENTITYTYPE)
  VALUES(52004, 0, 0, 'Y', sysdate, 100, sysdate, 'Web Properties', 100, NULL, 'N', 'N', 'N', 'W', 52002, NULL, NULL, NULL, NULL, NULL, 'D');
INSERT INTO AD_MENU(AD_MENU_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, NAME, UPDATEDBY, DESCRIPTION, ISSUMMARY, ISSOTRX, ISREADONLY, ACTION, AD_WINDOW_ID, AD_WORKFLOW_ID, AD_TASK_ID, AD_PROCESS_ID, AD_FORM_ID, AD_WORKBENCH_ID, ENTITYTYPE)
  VALUES(52005, 0, 0, 'Y', sysdate, 100, sysdate, 'Black Listed Cheque', 100, NULL, 'N', 'N', 'N', 'W', 52003, NULL, NULL, NULL, NULL, NULL, 'D');

-- AD_TREENODEMM Changes --
INSERT INTO AD_TREENODEMM(AD_TREE_ID, NODE_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, PARENT_ID, SEQNO)
  VALUES(10, 52002, 0, 0, 'Y', sysdate, 0, sysdate, 0, 52001, 3);
INSERT INTO AD_TREENODEMM(AD_TREE_ID, NODE_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, PARENT_ID, SEQNO)
  VALUES(10, 52003, 0, 0, 'Y', sysdate, 0, sysdate, 0, 52001, 2);
INSERT INTO AD_TREENODEMM(AD_TREE_ID, NODE_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, PARENT_ID, SEQNO)
  VALUES(10, 52004, 0, 0, 'Y', sysdate, 0, sysdate, 0, 52001, 1);
INSERT INTO AD_TREENODEMM(AD_TREE_ID, NODE_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, PARENT_ID, SEQNO)
  VALUES(10, 52005, 0, 0, 'Y', sysdate, 0, sysdate, 0, 52001, 0);
