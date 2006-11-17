/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                        *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.compiere.install;

import java.io.*;
import java.net.*;
import java.util.*;
import java.util.logging.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.swing.*;

import org.compiere.*;
import org.compiere.db.*;
import org.compiere.util.*;


/**
 *	Configuration Data
 *	
 *  @author Jorg Janke
 *  @version $Id: ConfigurationData.java,v 1.4 2006/07/30 00:57:42 jjanke Exp $
 */
public class ConfigurationData
{
	/**
	 * 	Constructor
	 * 	@param panel UI panel
	 */
	public ConfigurationData (ConfigurationPanel panel)
	{
		super ();
		p_panel = panel;
	}	//	ConfigurationData

	/** UI Panel				*/
	protected ConfigurationPanel	p_panel = null;
	/** Environment Properties	*/
	protected Properties		p_properties = new Properties();
	/**	Adempiere Home			*/
	private File				m_adempiereHome;

	
	/**	Static Logger	*/
	static CLogger	log	= CLogger.getCLogger (ConfigurationData.class);


	/** Properties File	name			*/
	public static final String	ADEMPIERE_ENV_FILE		= "AdempiereEnv.properties";
	
	/** Adempiere Home					*/
	public static final String	ADEMPIERE_HOME 			= "ADEMPIERE_HOME";
	/** 				*/
	public static final String	JAVA_HOME 				= "JAVA_HOME";
	/** 				*/
	public static final String	JAVA_TYPE 				= "ADEMPIERE_JAVA_TYPE";
	/** 				*/
	public static final String	ADEMPIERE_JAVA_OPTIONS 	= "ADEMPIERE_JAVA_OPTIONS";
	/** Default Keysore Password		*/
	public static final String	KEYSTORE_PASSWORD		= "myPassword";

	/** 				*/
	public static final String	ADEMPIERE_APPS_TYPE		= "ADEMPIERE_APPS_TYPE";
	/** 				*/
	public static final String	ADEMPIERE_APPS_SERVER 	= "ADEMPIERE_APPS_SERVER";
	/** 				*/
	public static final String	ADEMPIERE_APPS_DEPLOY	= "ADEMPIERE_APPS_DEPLOY";
	/** 				*/
	public static final String	ADEMPIERE_JNP_PORT 		= "ADEMPIERE_JNP_PORT";
	/** 				*/
	public static final String	ADEMPIERE_WEB_PORT 		= "ADEMPIERE_WEB_PORT";
	/** 				*/
	public static final String	ADEMPIERE_SSL_PORT 		= "ADEMPIERE_SSL_PORT";
	/** 				*/
	public static final String	ADEMPIERE_WEB_ALIAS 		= "ADEMPIERE_WEB_ALIAS";
	
	/** 				*/
	public static final String	ADEMPIERE_KEYSTORE 		= "ADEMPIERE_KEYSTORE";
	/** 				*/
	public static final String	ADEMPIERE_KEYSTOREPASS	= "ADEMPIERE_KEYSTOREPASS";
	/** 				*/
	public static final String	ADEMPIERE_KEYSTORECODEALIAS	= "ADEMPIERE_KEYSTORECODEALIAS";
	/** 				*/
	public static final String	ADEMPIERE_KEYSTOREWEBALIAS	= "ADEMPIERE_KEYSTOREWEBALIAS";

	/** 				*/
	public static final String	ADEMPIERE_DB_TYPE		= "ADEMPIERE_DB_TYPE";
	/** 				*/
	public static final String	ADEMPIERE_DB_SERVER 		= "ADEMPIERE_DB_SERVER";
	/** 				*/
	public static final String	ADEMPIERE_DB_PORT 		= "ADEMPIERE_DB_PORT";
	/** 				*/
	public static final String	ADEMPIERE_DB_NAME 		= "ADEMPIERE_DB_NAME";
	/** 				*/
	public static final String	ADEMPIERE_DB_URL 		= "ADEMPIERE_DB_URL";

	/** 				*/
	public static final String	ADEMPIERE_DB_USER 		= "ADEMPIERE_DB_USER";
	/** 				*/
	public static final String	ADEMPIERE_DB_PASSWORD 	= "ADEMPIERE_DB_PASSWORD";
	/** 				*/
	public static final String	ADEMPIERE_DB_SYSTEM 		= "ADEMPIERE_DB_SYSTEM";

	/** 				*/
	public static final String	ADEMPIERE_MAIL_SERVER 	= "ADEMPIERE_MAIL_SERVER";
	/** 				*/
	public static final String	ADEMPIERE_MAIL_USER 		= "ADEMPIERE_MAIL_USER";
	/** 				*/
	public static final String	ADEMPIERE_MAIL_PASSWORD 	= "ADEMPIERE_MAIL_PASSWORD";
	/** 				*/
	public static final String	ADEMPIERE_ADMIN_EMAIL	= "ADEMPIERE_ADMIN_EMAIL";
	/** 				*/
	public static final String	ADEMPIERE_MAIL_UPDATED	= "ADEMPIERE_MAIL_UPDATED";

	/** 				*/
	public static final String	ADEMPIERE_FTP_SERVER		= "ADEMPIERE_FTP_SERVER";
	/** 				*/
	public static final String	ADEMPIERE_FTP_USER		= "ADEMPIERE_FTP_USER";
	/** 				*/
	public static final String	ADEMPIERE_FTP_PASSWORD	= "ADEMPIERE_FTP_PASSWORD";
	/** 				*/
	public static final String	ADEMPIERE_FTP_PREFIX		= "ADEMPIERE_FTP_PREFIX";

	/** 				*/
	public static final String	ADEMPIERE_WEBSTORES		= "ADEMPIERE_WEBSTORES";
	
	
	
	/**
	 * 	Load Configuration Data
	 * 	@return true if loaded
	 */
	public boolean load()
	{
		//	Load C:\Adempiere\AdempiereEnv.properties
		String adempiereHome = System.getProperty(ADEMPIERE_HOME);
		if (adempiereHome == null || adempiereHome.length() == 0)
			adempiereHome = System.getProperty("user.dir");
		
		boolean envLoaded = false;
		String fileName = adempiereHome + File.separator + ADEMPIERE_ENV_FILE;
		File env = new File (fileName);
		if (env.exists())
		{
			try
			{
				FileInputStream fis = new FileInputStream(env);
				p_properties.load(fis);
				fis.close();
			}
			catch (Exception e)
			{
				log.severe(e.toString());
			}
			log.info(env.toString());
			if (p_properties.size() > 5)
				envLoaded = true;
			//
			setJavaType((String)p_properties.get(JAVA_TYPE));
			initJava();
			setJavaHome((String)p_properties.get(JAVA_HOME));
			//
			setAdempiereHome((String)p_properties.get(ADEMPIERE_HOME));
			String s = (String)p_properties.get(ADEMPIERE_KEYSTOREPASS);
			if (s == null || s.length() == 0)
				s = KEYSTORE_PASSWORD;
			setKeyStore(s);
			//
			setAppsServerType((String)p_properties.get(ADEMPIERE_APPS_TYPE));
			initAppsServer();
			setAppsServer((String)p_properties.get(ADEMPIERE_APPS_SERVER));
			setAppsServerDeployDir((String)p_properties.get(ADEMPIERE_APPS_DEPLOY));
			setAppsServerJNPPort((String)p_properties.get(ADEMPIERE_JNP_PORT));
			setAppsServerWebPort((String)p_properties.get(ADEMPIERE_WEB_PORT));
			setAppsServerSSLPort((String)p_properties.get(ADEMPIERE_SSL_PORT));
			//
			setDatabaseType((String)p_properties.get(ADEMPIERE_DB_TYPE));
			initDatabase((String)p_properties.get(ADEMPIERE_DB_NAME));	//	fills Database Options
			setDatabaseDiscovered((String)p_properties.get(ADEMPIERE_DB_NAME));
			setDatabaseServer((String)p_properties.get(ADEMPIERE_DB_SERVER));
			setDatabasePort((String)p_properties.get(ADEMPIERE_DB_PORT));
			setDatabaseName((String)p_properties.get(ADEMPIERE_DB_NAME));

			setDatabaseUser((String)p_properties.get(ADEMPIERE_DB_USER));
			setDatabasePassword((String)p_properties.get(ADEMPIERE_DB_PASSWORD));
			setDatabaseSystemPassword((String)p_properties.get(ADEMPIERE_DB_SYSTEM));

			p_panel.fMailServer.setText((String)p_properties.get(ADEMPIERE_MAIL_SERVER));
			p_panel.fMailUser.setText((String)p_properties.get(ADEMPIERE_MAIL_USER));
			p_panel.fMailPassword.setText((String)p_properties.get(ADEMPIERE_MAIL_PASSWORD));
			p_panel.fAdminEMail.setText((String)p_properties.get(ADEMPIERE_ADMIN_EMAIL));
		}

		InetAddress localhost = null;
		String hostName = "unknown";
		try
		{
			localhost = InetAddress.getLocalHost();
			hostName = localhost.getHostName();
		}
		catch (Exception e)
		{
			log.severe("Cannot get local host name");
		}
		
		//	No environment file found - defaults
	//	envLoaded = false;
		if (!envLoaded)
		{
			log.info("Defaults");
			initJava();
			//
			setAdempiereHome(adempiereHome);
			setKeyStore(KEYSTORE_PASSWORD);
			//	AppsServer
			initAppsServer();
			setAppsServer(hostName);
			//	Database Server
			initDatabase("");
			setDatabaseName(getDatabaseDiscovered());
			setDatabaseSystemPassword("");
			setDatabaseServer(hostName);
			setDatabaseUser("adempiere");
			setDatabasePassword("adempiere");
			//	Mail Server
			p_panel.fMailServer.setText(hostName);
			p_panel.fMailUser.setText("info");
			p_panel.fMailPassword.setText("");
			p_panel.fAdminEMail.setText("info@" + hostName);
			//
		}	//	!envLoaded

		//	Default FTP stuff
		if (!p_properties.containsKey(ADEMPIERE_FTP_SERVER))
		{
			p_properties.setProperty(ADEMPIERE_FTP_SERVER, "localhost");
			p_properties.setProperty(ADEMPIERE_FTP_USER, "anonymous");
			p_properties.setProperty(ADEMPIERE_FTP_PASSWORD, "user@host.com");
			p_properties.setProperty(ADEMPIERE_FTP_PREFIX, "my");
		}
		//	Default Java Options
		if (!p_properties.containsKey(ADEMPIERE_JAVA_OPTIONS))
			p_properties.setProperty(ADEMPIERE_JAVA_OPTIONS, "-Xms64M -Xmx512M");
		//	Web Alias
		if (!p_properties.containsKey(ADEMPIERE_WEB_ALIAS) && localhost != null)
			p_properties.setProperty(ADEMPIERE_WEB_ALIAS, localhost.getCanonicalHostName());
		
		//	(String)p_properties.get(ADEMPIERE_DB_URL)	//	derived
		
		//	Keystore Alias
		if (!p_properties.containsKey(ADEMPIERE_KEYSTORECODEALIAS))
			p_properties.setProperty(ADEMPIERE_KEYSTORECODEALIAS, "adempiere");
		if (!p_properties.containsKey(ADEMPIERE_KEYSTOREWEBALIAS))
			p_properties.setProperty(ADEMPIERE_KEYSTOREWEBALIAS, "adempiere");

		return true;
	}	//	load
	
	
	/**************************************************************************
	 * 	test
	 *	@return true if test ok
	 */
	public boolean test()
	{
		String error = testJava();
		if (error != null)
		{
			log.severe(error);
			return false;
		}
		
		error = testAdempiere();
		if (error != null)
		{
			log.severe(error);
			return false;
		}

		p_panel.setStatusBar(p_panel.lAppsServer.getText());
		error = testAppsServer();
		if (error != null)
		{
			log.severe(error);
			return false;
		}
		
		p_panel.setStatusBar(p_panel.lDatabaseServer.getText());
		error = testDatabase();
		if (error != null)
		{
			log.severe(error);
			return false;
		}

		p_panel.setStatusBar(p_panel.lMailServer.getText());
		error = testMail();
		if (error != null)
		{
			log.severe(error);
			return false;
		}
		
		return true;
	}	//	test
	

	/**
	 * 	Test Adempiere and set AdempiereHome
	 *	@return error message or null if OK
	 */
	private String testAdempiere()
	{
		//	Adempiere Home
		m_adempiereHome = new File (getAdempiereHome());
		boolean pass =m_adempiereHome.exists();
		String error = "Not found: AdempiereHome = " + m_adempiereHome;
		p_panel.signalOK(p_panel.okAdempiereHome, "ErrorAdempiereHome", 
			pass, true, error);
		if (!pass)
			return error;
		log.info("OK: AdempiereHome = " + m_adempiereHome);
		p_properties.setProperty(ADEMPIERE_HOME, m_adempiereHome.getAbsolutePath());
		System.setProperty(ADEMPIERE_HOME, m_adempiereHome.getAbsolutePath());
		
		//	KeyStore
		String fileName = KeyStoreMgt.getKeystoreFileName(m_adempiereHome.getAbsolutePath());
		p_properties.setProperty(ADEMPIERE_KEYSTORE, fileName);
		
		//	KeyStore Password
		String pw = new String(p_panel.fKeyStore.getPassword());
		pass = pw != null && pw.length() > 0;
		error = "Invalid Key Store Password = " + pw;
		p_panel.signalOK(p_panel.okKeyStore, "KeyStorePassword", 
			pass, true, error); 
		if (!pass)
			return error;
		p_properties.setProperty(ADEMPIERE_KEYSTOREPASS, pw);
		KeyStoreMgt ks = new KeyStoreMgt (fileName, p_panel.fKeyStore.getPassword());
		error = ks.verify((JFrame)SwingUtilities.getWindowAncestor(p_panel));
		pass = error == null;
		p_panel.signalOK(p_panel.okKeyStore, "KeyStorePassword", 
			pass, true, error);
		if (!pass)
			return error;
		log.info("OK: KeyStore = " + fileName);
		return null;
	}	//	testAdempiere
	
	
	/**************************************************************************
	 * 	Test (optional) Mail
	 *	@return error message or null, if OK
	 */
	private String testMail()
	{
		//	Mail Server
		String server = p_panel.fMailServer.getText();
		boolean pass = server != null && server.length() > 0
			&& server.toLowerCase().indexOf("localhost") == -1 
			&& !server.equals("127.0.0.1");
		String error = "Error Mail Server = " + server;
		InetAddress	mailServer = null;
		try
		{
			if (pass)
				mailServer = InetAddress.getByName(server);
		}
		catch (Exception e)
		{
			error += " - " + e.getMessage();
			pass = false;
		}
		p_panel.signalOK(p_panel.okMailServer, "ErrorMailServer",
			pass, true, error);
		if (!pass)
		{
			p_properties.setProperty(ADEMPIERE_MAIL_SERVER, "");
			return error;
		}
		p_properties.setProperty(ADEMPIERE_MAIL_SERVER, mailServer.getHostName());

		//	Mail User
		String mailUser = p_panel.fMailUser.getText();
		String mailPassword = new String(p_panel.fMailPassword.getPassword());
	//	m_errorString = "ErrorMailUser";
	//	log.config("Mail User = " + mailUser + "/" + mailPassword);

		//	Mail Address
		String adminEMailString = p_panel.fAdminEMail.getText();
		InternetAddress adminEMail = null;
		try
		{
			adminEMail = new InternetAddress (adminEMailString);
		}
		catch (Exception e)
		{
			error = "Not valid: " +  adminEMailString + " - " + e.getMessage();
			pass = false;
		}
		//
		if (pass)
		{
			error = "Not verified EMail = " + adminEMail;
			pass = testMailServer(mailServer, adminEMail, mailUser, mailPassword);
		}
		p_panel.signalOK(p_panel.okMailUser, "ErrorMail", 
			pass, false, error);
		if (pass)
		{
			log.info("OK: EMail = " + adminEMail);
			p_properties.setProperty(ADEMPIERE_ADMIN_EMAIL, adminEMail.toString());
			p_properties.setProperty(ADEMPIERE_MAIL_USER, mailUser);
			p_properties.setProperty(ADEMPIERE_MAIL_PASSWORD, mailPassword);
			p_properties.setProperty(ADEMPIERE_MAIL_UPDATED, "No");
		}
		else
		{
			log.warning(error);
			p_properties.setProperty(ADEMPIERE_ADMIN_EMAIL, "");
			p_properties.setProperty(ADEMPIERE_MAIL_USER, "");
			p_properties.setProperty(ADEMPIERE_MAIL_PASSWORD, "");
			p_properties.setProperty(ADEMPIERE_MAIL_UPDATED, "");
		}
		return null;
	}	//	testMail
	
	/**
	 * 	Test Mail
	 * 	@param mailServer mail server
	 * 	@param adminEMail email of admin
	 * 	@param mailUser user ID
	 * 	@param mailPassword password
	 *  @return true of OK
	 */
	private boolean testMailServer(InetAddress	mailServer, InternetAddress adminEMail,
		String mailUser, String mailPassword)
	{
		boolean smtpOK = false;
		boolean imapOK = false;
		if (testPort (mailServer, 25, true))
		{
			log.config("OK: SMTP Server contacted");
			smtpOK = true;
		}
		else
			log.info("SMTP Server NOT available");
		//
		if (testPort (mailServer, 110, true))
			log.config("OK: POP3 Server contacted");
		else
			log.info("POP3 Server NOT available");
		if (testPort (mailServer, 143, true))
		{
			log.config("OK: IMAP4 Server contacted");
			imapOK = true;
		}
		else
			log.info("IMAP4 Server NOT available");
		//
		if (!smtpOK)
		{
			String error = "No active Mail Server";
			p_panel.signalOK (p_panel.okMailServer, "ErrorMailServer",
				false, false, error);
			log.warning(error);
			return false;
		}
		//
		try
		{
			EMail email = new EMail (new Properties(),
					mailServer.getHostName (),
					adminEMail.toString (), adminEMail.toString(),
					"Adempiere Server Setup Test", 
					"Test: " + getProperties());
			email.createAuthenticator (mailUser, mailPassword);
			if (EMail.SENT_OK.equals (email.send ()))
			{
				log.info("OK: Send Test Email to " + adminEMail);
			}
			else
			{
				log.warning("Could NOT send Email to " + adminEMail);
			}
		}
		catch (Exception ex)
		{
			log.severe(ex.getLocalizedMessage());
			return false;
		}

		//
		if (!imapOK)
			return false;

		//	Test Read Mail Access
		Properties props = new Properties();
		props.put("mail.store.protocol", "smtp");
		props.put("mail.transport.protocol", "smtp");
		props.put("mail.host", mailServer.getHostName());
		props.put("mail.user", mailUser);
		props.put("mail.smtp.auth", "true");
		log.config("Connecting to " + mailServer.getHostName());
		//
		Session session = null;
		Store store = null;
		try
		{
			EMailAuthenticator auth = new EMailAuthenticator (mailUser, mailPassword);
			session = Session.getDefaultInstance(props, auth);
			session.setDebug (CLogMgt.isLevelFinest());
			log.config("Session=" + session);
			//	Connect to Store
			store = session.getStore("imap");
			log.config("Store=" + store);
		}
		catch (NoSuchProviderException nsp)
		{
			log.warning("Mail IMAP Provider - " + nsp.getMessage());
			return false;
		}
		catch (Exception e)
		{
			log.warning("Mail IMAP - " + e.getMessage());
			return false;
		}
		try
		{
			store.connect(mailServer.getHostName(), mailUser, mailPassword);
			log.config("Store - connected");
			Folder folder = store.getDefaultFolder();
			Folder inbox = folder.getFolder("INBOX");
			log.info("OK: Mail Connect to " + inbox.getFullName() + " #Msg=" + inbox.getMessageCount());
			//
			store.close();
		}
		catch (MessagingException mex)
		{
			log.severe("Mail Connect " + mex.getMessage());
			return false;
		}
		return true;
	}	//	testMailServer
	
	
	/**************************************************************************
	 * 	Test Apps Server Port (client perspective)
	 *  @param protocol protocol (http, ..)
	 *  @param server server name
	 *  @param port port
	 *  @param file file name
	 *  @return true if able to connect
	 */
	protected boolean testPort (String protocol, String server, int port, String file)
	{
		URL url = null;
		try
		{
			url = new URL (protocol, server, port, file);
		}
		catch (MalformedURLException ex)
		{
			log.severe("No URL for Protocol=" + protocol 
				+ ", Server=" + server
				+ ": " + ex.getMessage());
			return false;
		}
		try
		{
			URLConnection c = url.openConnection();
			Object o = c.getContent();
			log.severe("In use=" + url);	//	error
		}
		catch (Exception ex)
		{
			log.fine("Not used=" + url);	//	ok
			return false;
		}
		return true;
	}	//	testPort

	/**
	 * 	Test Server Port
	 *  @param port port
	 *  @return true if able to create
	 */
	protected boolean testServerPort (int port)
	{
		try
		{
			ServerSocket ss = new ServerSocket (port);
			log.fine(ss.getInetAddress() + ":" + ss.getLocalPort() + " - created");
			ss.close();
		}
		catch (Exception ex)
		{
			log.severe("Port " + port + ": " + ex.getMessage());
			return false;
		}
		return true;
	}	//	testPort


	/**
	 * 	Test Port
	 *  @param host host
	 *  @param port port
	 *  @param shouldBeUsed true if it should be used
	 *  @return true if some server answered on port
	 */
	protected boolean testPort (InetAddress host, int port, boolean shouldBeUsed)
	{
		Socket pingSocket = null;
		try
		{
			pingSocket = new Socket(host, port);
		}
		catch (Exception e)
		{
			if (shouldBeUsed)
				log.severe("Open Socket " + host + ":" + port + " - " + e.getMessage());
			else
				log.fine(host + ":" + port + " - " + e.getMessage());
			return false;
		}
		if (!shouldBeUsed)
			log.severe("Open Socket " + host + ":" + port + " - " + pingSocket);
		
		log.fine(host + ":" + port + " - " + pingSocket);
		if (pingSocket == null)
			return false;
		//	success
		try
		{
			pingSocket.close();
		}
		catch (IOException e)
		{
			log.severe("close socket=" + e.toString());
		}
		return true;
	}	//	testPort

	
	/**************************************************************************
	 * 	Save Settings
	 *	@return true if saved
	 */
	public boolean save()
	{
		//	Add
		p_properties.setProperty("ADEMPIERE_MAIN_VERSION", Adempiere.MAIN_VERSION);
		p_properties.setProperty("ADEMPIERE_DATE_VERSION", Adempiere.DATE_VERSION);
		p_properties.setProperty("ADEMPIERE_DB_VERSION", Adempiere.DB_VERSION);

		log.finest(p_properties.toString());
		
		//	Before we save, load Ini
		Ini.setClient(false);
		String fileName = m_adempiereHome.getAbsolutePath() + File.separator + Ini.ADEMPIERE_PROPERTY_FILE;
		Ini.loadProperties(fileName);

		//	Save Environment
		fileName = m_adempiereHome.getAbsolutePath() + File.separator + ADEMPIERE_ENV_FILE;
		try
		{
			FileOutputStream fos = new FileOutputStream(new File(fileName));
			p_properties.store(fos, ADEMPIERE_ENV_FILE);
			fos.flush();
			fos.close();
		}
		catch (Exception e)
		{
			log.severe("Cannot save Properties to " + fileName + " - " + e.toString());
			JOptionPane.showConfirmDialog(p_panel, 
				ConfigurationPanel.res.getString("ErrorSave"), 
				ConfigurationPanel.res.getString("AdempiereServerSetup"),
				JOptionPane.DEFAULT_OPTION, JOptionPane.ERROR_MESSAGE);
			return false;
		}
		catch (Throwable t)
		{
			log.severe("Cannot save Properties to " + fileName + " - " + t.toString());
			JOptionPane.showConfirmDialog(p_panel, 
				ConfigurationPanel.res.getString("ErrorSave"), 
				ConfigurationPanel.res.getString("AdempiereServerSetup"),
				JOptionPane.DEFAULT_OPTION, JOptionPane.ERROR_MESSAGE);
			return false;
		}
		log.info(fileName);
		return saveIni();
	}	//	save
	
	/**
	 * 	Synchronize and save Connection Info in Ini
	 * 	@return true 
	 */
	private boolean saveIni()
	{
		Ini.setAdempiereHome(m_adempiereHome.getAbsolutePath());

		//	Create Connection
		String ccType = Database.DB_ORACLE;
		if (getDatabaseType().equals(DBTYPE_MS))
			ccType = Database.DB_MSSQLServer;
		else if (getDatabaseType().equals(DBTYPE_DB2))
			ccType = Database.DB_DB2;
		else if (getDatabaseType().equals(DBTYPE_DERBY))
			ccType = Database.DB_DERBY;
                 //begin vpj-cd e-evolution 03/17/2005 PostgreSQL
                else if (getDatabaseType().equals(DBTYPE_POSTGRESQL))
			ccType = Database.DB_POSTGRESQL;
               
		//end vpj-cd e-evolution 03/17/2005 PostgreSQL
		CConnection cc = null;
		try
		{
			cc = CConnection.get (ccType,
				getDatabaseServer(), getDatabasePort(), getDatabaseName(),
				getDatabaseUser(), getDatabasePassword());
			cc.setAppsHost(p_panel.fAppsServer.getText());
			cc.setConnectionProfile(CConnection.PROFILE_LAN);
		}
		catch(Exception e)
		{
			log.log(Level.SEVERE, "connection", e);
			return false;
		}
		if (cc == null)
		{
			log.severe("No Connection");
			return false;
		}
		Ini.setProperty(Ini.P_CONNECTION, cc.toStringLong());
		Ini.saveProperties(false);
		return true;
	}	//	saveIni
	
	
	/**
	 * 	Get Properties
	 *	@return properties
	 */
	Properties getProperties ()
	{
		return p_properties;
	}	//	getProperties
	
	/**
	 * 	Get Adempiere Home
	 *	@return adempiere home
	 */
	public String getAdempiereHome()
	{
		return p_panel.fAdempiereHome.getText();
	}	//	getAdempiereHome

	/**
	 * 	Set Adempiere Home
	 *	@param adempiereHome
	 */
	public void setAdempiereHome (String adempiereHome)
	{
		p_panel.fAdempiereHome.setText(adempiereHome);
	}	//	setAdempiereHome
	
	/**
	 * 	Get Key Store
	 *	@return password
	 */
	public String getKeyStore ()
	{
		char[] pw = p_panel.fKeyStore.getPassword();
		if (pw != null)
			return new String(pw);
		return "";
	}	//	getKeyStore

	/**
	 * 	Set Key Store Password
	 *	@param password
	 */
	public void setKeyStore (String password)
	{
		p_panel.fKeyStore.setText(password);
	}	//	setKeyStore
	
	
	/**************************************************************************
	 * 	Java Settings
	 *************************************************************************/

	/** SUN VM (default)	*/
	private static String	JAVATYPE_SUN = "sun";
	/** Apple VM			*/
	private static String	JAVATYPE_MAC = "mac";
	/** IBM VM				*/
	private static String	JAVATYPE_IBM = "<ibm>";
	/** Java VM Types		*/
	static String[]	JAVATYPE = new String[]
		{JAVATYPE_SUN, JAVATYPE_MAC, JAVATYPE_IBM};
	/** Database Configs	*/
	private Config[] m_javaConfig = new Config[]
	    {new ConfigVMSun(this), new ConfigVMMac(this), null};

	/**
	 * 	Init Database
	 */
	public void initJava()
	{
		int index = p_panel.fJavaType.getSelectedIndex();
		if (index < 0 || index >= JAVATYPE.length)
			log.warning("JavaType Index invalid: " + index);
		else if (m_javaConfig[index] == null)
		{
			log.warning("JavaType Config missing: " + JAVATYPE[index]);
			p_panel.fJavaType.setSelectedIndex(0);
		}
		else
			m_javaConfig[index].init();
	}	//	initDatabase
	
	/**
	 * 	Test Java
	 *	@return error message or null of OK
	 */
	public String testJava()
	{
		int index = p_panel.fJavaType.getSelectedIndex();
		if (index < 0 || index >= JAVATYPE.length)
			return "JavaType Index invalid: " + index;
		else if (m_javaConfig[index] == null)
			return "JavaType Config class missing: " + index;
		return m_javaConfig[index].test();
	}	//	testJava
	
	/**
	 * 	Set Java Type
	 *	@param javaType The javaType to set.
	 */
	public void setJavaType (String javaType)
	{
		int index = -1;
		for (int i = 0; i < JAVATYPE.length; i++)
		{
			if (JAVATYPE[i].equals(javaType))
			{
				index = i;
				break;
			}
		}
		if (index == -1)
		{
			index = 0;
			log.warning("Invalid JavaType=" + javaType);
		}
		p_panel.fJavaType.setSelectedIndex(index);
	}	//	setJavaType

	/**
	 * @return Returns the javaType.
	 */
	public String getJavaType ()
	{
		return (String)p_panel.fJavaType.getSelectedItem();
	}

	/**
	 * @return Returns the javaHome.
	 */
	public String getJavaHome ()
	{
		return p_panel.fJavaHome.getText();
	}
	/**
	 * @param javaHome The javaHome to set.
	 */
	public void setJavaHome (String javaHome)
	{
		p_panel.fJavaHome.setText(javaHome);
	}
	
	/**************************************************************************
	 * 	Apps Server Settings
	 *************************************************************************/

	/**	JBoss (default)		*/
	protected static String	APPSTYPE_JBOSS = "jboss";
	/** Tomcat only			*/
	protected static String	APPSTYPE_TOMCAT = "tomcatOnly";
	/** IBM WS					*/
	private static String	APPSTYPE_IBM = "<ibmWS>";
	/** Oracle				*/
	private static String	APPSTYPE_ORACLE = "<oracleAS>";
	/** Application Server Type		*/
	static String[]	APPSTYPE = new String[]
		{APPSTYPE_JBOSS, APPSTYPE_TOMCAT, 
		APPSTYPE_IBM, APPSTYPE_ORACLE};
	/** Database Configs	*/
	private Config[] m_appsConfig = new Config[]
	    {new ConfigJBoss(this), new ConfigTomcat(this), 
		null, null};

	/**
	 * 	Init Apps Server
	 */
	public void initAppsServer()
	{
		int index = p_panel.fAppsType.getSelectedIndex();
		if (index < 0 || index >= APPSTYPE.length)
			log.warning("AppsServerType Index invalid: " + index);
		else if (m_appsConfig[index] == null)
		{
			log.warning("AppsServerType Config missing: " + APPSTYPE[index]);
			p_panel.fAppsType.setSelectedIndex(0);
		}
		else
			m_appsConfig[index].init();
	}	//	initAppsServer
	
	/**
	 * 	Test Apps Server
	 *	@return error message or null of OK
	 */
	public String testAppsServer()
	{
		int index = p_panel.fAppsType.getSelectedIndex();
		if (index < 0 || index >= APPSTYPE.length)
			return "AppsServerType Index invalid: " + index;
		else if (m_appsConfig[index] == null)
			return "AppsServerType Config class missing: " + index;
		return m_appsConfig[index].test();
	}	//	testAppsServer
	
	
	/**
	 * 	Set Apps Server Type
	 *	@param appsType The appsType to set.
	 */
	public void setAppsServerType (String appsType)
	{
		int index = -1;
		for (int i = 0; i < APPSTYPE.length; i++)
		{
			if (APPSTYPE[i].equals(appsType))
			{
				index = i;
				break;
			}
		}
		if (index == -1)
		{
			index = 0;
			log.warning("Invalid AppsType=" + appsType);
		}
		p_panel.fAppsType.setSelectedIndex(index);
	}	//	setAppsServerType

	/**
	 * 	Get Apps Server Type
	 *	@return Apps Server Type
	 */
	public String getAppsServerType ()
	{
		return (String)p_panel.fAppsType.getSelectedItem();
	}	//	setDatabaseType

	/**
	 * @return Returns the appsServer.
	 */
	public String getAppsServer ()
	{
		return p_panel.fAppsServer.getText();
	}
	/**
	 * @param appsServer The appsServer to set.
	 */
	public void setAppsServer (String appsServer)
	{
		p_panel.fAppsServer.setText(appsServer);
	}
	
	/**
	 * @return Returns the appsServerDeployDir.
	 */
	public String getAppsServerDeployDir ()
	{
		return p_panel.fDeployDir.getText();
	}
	/**
	 * @param appsServerDeployDir The appsServerDeployDir to set.
	 */
	public void setAppsServerDeployDir (String appsServerDeployDir)
	{
		p_panel.fDeployDir.setText(appsServerDeployDir);
	}
	/**
	 * @param enable if true enable entry
	 */
	public void setAppsServerDeployDir (boolean enable)
	{
		p_panel.fDeployDir.setEnabled(enable);
		p_panel.bDeployDir.setEnabled(enable);
	}
	/**
	 * @return Returns the appsServerJNPPort.
	 */
	public int getAppsServerJNPPort ()
	{
		try
		{
			return Integer.parseInt(p_panel.fJNPPort.getText());
		}
		catch (Exception e)
		{
			setAppsServerJNPPort("0");
		}
		return 0;
	}
	/**
	 * @param appsServerJNPPort The appsServerJNPPort to set.
	 */
	public void setAppsServerJNPPort (String appsServerJNPPort)
	{
		p_panel.fJNPPort.setText(appsServerJNPPort);
	}
	/**
	 * @param enable if enable JNP entry
	 */
	public void setAppsServerJNPPort (boolean enable)
	{
		p_panel.fJNPPort.setEnabled(enable);
	}
	/**
	 * @return Returns the appsServerSSLPort.
	 */
	public int getAppsServerSSLPort ()
	{
		try
		{
			return Integer.parseInt(p_panel.fSSLPort.getText());
		}
		catch (Exception e)
		{
			setAppsServerSSLPort("0");
		}
		return 0;
	}
	/**
	 * @param appsServerSSLPort The appsServerSSLPort to set.
	 */
	public void setAppsServerSSLPort (String appsServerSSLPort)
	{
		p_panel.fSSLPort.setText(appsServerSSLPort);
	}
	/**
	 * @param enable if tre enable SSL entry
	 */
	public void setAppsServerSSLPort (boolean enable)
	{
		p_panel.fSSLPort.setEnabled(enable);
	}
	/**
	 * @return Returns the appsServerWebPort.
	 */
	public int getAppsServerWebPort ()
	{
		try
		{
			return Integer.parseInt(p_panel.fWebPort.getText());
		}
		catch (Exception e)
		{
			setAppsServerWebPort("0");
		}
		return 0;
	}
	/**
	 * @param appsServerWebPort The appsServerWebPort to set.
	 */
	public void setAppsServerWebPort (String appsServerWebPort)
	{
		p_panel.fWebPort.setText(appsServerWebPort);
	}
	/**
	 * @param enable if tre enable Web entry
	 */
	public void setAppsServerWebPort (boolean enable)
	{
		p_panel.fWebPort.setEnabled(enable);
	}
	
	
	/**************************************************************************
	 * 	Database Settings
	 *************************************************************************/
	
	/** Derby/Cloudscape	*/
	private static String	DBTYPE_DERBY = "derby";
	/** Oracle directory	*/
	private static String	DBTYPE_ORACLE = "oracle";
	/** DB/2				*/
	private static String	DBTYPE_DB2 = "<db2>";
	/** MS SQL Server		*/
	private static String	DBTYPE_MS = "<sqlServer>";
        
        // begin e-evolution vpj-cd 02/07/2005 PostgreSQL
	/** PostgreSQL          */
	private static String	DBTYPE_POSTGRESQL = "postgresql";
        private static String	DBTYPE_EDB = "enterprisedb";
	// end e-evolution vpj-cd 02/07/2005 PostgreSQL
	
	/** Database Types		*/
	static String[]	DBTYPE = new String[]
		{//DBTYPE_DERBY,
		DBTYPE_ORACLE, 
		//DBTYPE_DB2, 
		//DBTYPE_MS,
                 //begin e-evolution vpj-cd 02/07/2005 PostgreSQL
                 DBTYPE_POSTGRESQL 
        };
	    //end e-evolution vpj-cd 02/07/2005 PostgreSQL
		
	/** Database Configs	*/
	private Config[] m_databaseConfig = new Config[]
	    {
		//new ConfigDerby(this), 
		new ConfigOracle(this), 
		//new ConfigDB2(this), 
		//begin e-evolution vpj-cd 02/07/2005 PostgreSQL
		//null	
		//null,
		new ConfigPostgreSQL(this)  
//		new ConfigEDB(this)
		//		end e-evolution vpj-cd 02/07/2005 PostgreSQL
		};

	/**
	 * 	Init Database
	 * 	@param selected DB
	 */
	public void initDatabase(String selected)
	{
		int index = p_panel.fDatabaseType.getSelectedIndex();
		if (index < 0 || index >= DBTYPE.length)
			log.warning("DatabaseType Index invalid: " + index);
		else if (m_databaseConfig[index] == null)
		{
			log.warning("DatabaseType Config missing: " + DBTYPE[index]);
			p_panel.fDatabaseType.setSelectedIndex(0);
		}
		else
		{
			m_databaseConfig[index].init();
			String[] databases = m_databaseConfig[index].discoverDatabases(selected);
			DefaultComboBoxModel model = new DefaultComboBoxModel(databases);
			p_panel.fDatabaseDiscovered.setModel(model); 
			p_panel.fDatabaseDiscovered.setEnabled(databases.length != 0);
		}
	}	//	initDatabase
	
	/**
	 * 	Test Database
	 *	@return error message or null of OK
	 */
	public String testDatabase()
	{
		int index = p_panel.fDatabaseType.getSelectedIndex();
		if (index < 0 || index >= DBTYPE.length)
			return "DatabaseType Index invalid: " + index;
		else if (m_databaseConfig[index] == null)
			return "DatabaseType Config class missing: " + index;
		return m_databaseConfig[index].test();
	}	//	testDatabase
	
	
	/**
	 * 	Set Database Type
	 *	@param databaseType The databaseType to set.
	 */
	public void setDatabaseType (String databaseType)
	{
		int index = -1;
		for (int i = 0; i < DBTYPE.length; i++)
		{
			if (DBTYPE[i].equals(databaseType))
			{
				index = i;
				break;
			}
		}
		if (index == -1)
		{
			index = 0;
			log.warning("Invalid DatabaseType=" + databaseType);
		}
		p_panel.fDatabaseType.setSelectedIndex(index);
	}	//	setDatabaseType
	
	/**
	 * @return Returns the databaseType.
	 */
	public String getDatabaseType ()
	{
		return (String)p_panel.fDatabaseType.getSelectedItem();
	}
	/**
	 * @return Returns the database Discovered.
	 */
	public String getDatabaseDiscovered ()
	{
		return (String)p_panel.fDatabaseDiscovered.getSelectedItem();
	}
	/**
	 * @param databaseDiscovered The database Discovered to set.
	 */
	public void setDatabaseDiscovered (String databaseDiscovered)
	{
		p_panel.fDatabaseDiscovered.setSelectedItem(databaseDiscovered);
	}
	
	/**
	 * @return Returns the databaseName.
	 */
	public String getDatabaseName ()
	{
		return p_panel.fDatabaseName.getText();
	}
	/**
	 * @param databaseName The databaseName to set.
	 */
	public void setDatabaseName (String databaseName)
	{
		p_panel.fDatabaseName.setText(databaseName);
	}
	
	/**
	 * @return Returns the database User Password.
	 */
	public String getDatabasePassword ()
	{
		char[] pw = p_panel.fDatabasePassword.getPassword();
		if (pw != null)
			return new String(pw);
		return "";
	}
	/**
	 * @param databasePassword The databasePassword to set.
	 */
	public void setDatabasePassword (String databasePassword)
	{
		p_panel.fDatabasePassword.setText(databasePassword);
	}
	/**
	 * @return Returns the databasePort.
	 */
	public int getDatabasePort ()
	{
		try
		{
			return Integer.parseInt(p_panel.fDatabasePort.getText());
		}
		catch (Exception e)
		{
			setDatabasePort("0");
		}
		return 0;
	}	//	getDatabasePort
	/**
	 * @param databasePort The databasePort to set.
	 */
	public void setDatabasePort (String databasePort)
	{
		p_panel.fDatabasePort.setText(databasePort);
	}
	/**
	 * @return Returns the databaseServer.
	 */
	public String getDatabaseServer ()
	{
		return p_panel.fDatabaseServer.getText();
	}
	/**
	 * @param databaseServer The databaseServer to set.
	 */
	public void setDatabaseServer (String databaseServer)
	{
		p_panel.fDatabaseServer.setText(databaseServer);
	}
	/**
	 * @return Returns the databaseSystemPassword.
	 */
	public String getDatabaseSystemPassword ()
	{
		char[] pw = p_panel.fSystemPassword.getPassword();
		if (pw != null)
			return new String(pw);
		return "";
	}
	/**
	 * @param databaseSystemPassword The databaseSystemPassword to set.
	 */
	public void setDatabaseSystemPassword (String databaseSystemPassword)
	{
		p_panel.fSystemPassword.setText(databaseSystemPassword);
	}
	/**
	 *	@param enable enable Database System Password
	 */
	public void setDatabaseSystemPassword (boolean enable)
	{
		p_panel.fSystemPassword.setEnabled(enable);
	}
	/**
	 * @return Returns the databaseUser.
	 */
	public String getDatabaseUser ()
	{
		return p_panel.fDatabaseUser.getText();
	}
	/**
	 * @param databaseUser The databaseUser to set.
	 */
	public void setDatabaseUser (String databaseUser)
	{
		p_panel.fDatabaseUser.setText(databaseUser);
	}
	
}	//	ConfigurationData
