-- Jan 13, 2009 5:59:32 PM ECT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='Z',Updated=TO_TIMESTAMP('2009-01-13 17:59:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=2291
;

UPDATE AD_WF_Node SET Action = 'Z' WHERE Action='N'