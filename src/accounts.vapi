/* accounts.vapi generated by vapigen-0.16, do not modify. */

[CCode (cprefix = "Ag", gir_namespace = "Accounts", gir_version = "1.0", lower_case_cprefix = "ag_")]
namespace Ag {
	[CCode (cheader_filename = "libaccounts-glib/accounts-glib.h", type_id = "ag_account_get_type ()")]
	public class Account : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Account ();
		public void @delete ();
		public unowned string get_display_name ();
		public bool get_enabled ();
		public unowned Ag.Manager get_manager ();
		public unowned string get_provider_name ();
		public Ag.Service get_selected_service ();
		public Ag.AccountSettingIter get_settings_iter (string? key_prefix);
		public Ag.SettingSource get_value (string key, ref GLib.Value value);
		public GLib.List<Ag.Service> list_enabled_services ();
		public GLib.List<Ag.Service> list_services ();
		public GLib.List<Ag.Service> list_services_by_type (string service_type);
		public void remove_watch (Ag.AccountWatch watch);
		public void select_service (Ag.Service? service);
		public void set_display_name (string display_name);
		public void set_enabled (bool enabled);
		public void set_value (string key, GLib.Value? value);
		public void settings_iter_init (Ag.AccountSettingIter iter, string? key_prefix);
		public void sign (string key, string token);
		public void store (Ag.AccountStoreCb callback);
		public bool store_blocking () throws GLib.Error;
		public bool supports_service (string service_type);
		public bool verify (string key, string token);
		public bool verify_with_tokens (string key, string tokens);
		public unowned Ag.AccountWatch watch_dir (string key_prefix, Ag.AccountNotifyCb callback);
		public unowned Ag.AccountWatch watch_key (string key, Ag.AccountNotifyCb callback);
		public bool foreign { construct; }
		[NoAccessorMethod]
		public uint id { get; construct; }
		public Ag.Manager manager { construct; }
		public string provider { construct; }
		public signal void deleted ();
		public signal void display_name_changed ();
		public signal void enabled (string service, bool enabled);
	}
	[CCode (cheader_filename = "libaccounts-glib/accounts-glib.h", type_id = "ag_account_service_get_type ()")]
	public class AccountService : GLib.Object {
		[CCode (has_construct_function = false)]
		public AccountService (owned Ag.Account account, owned Ag.Service? service);
		public unowned Ag.Account get_account ();
		public Ag.AuthData get_auth_data ();
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] get_changed_fields ();
		public bool get_enabled ();
		public unowned Ag.Service get_service ();
		public Ag.AccountSettingIter get_settings_iter (string? key_prefix);
		public Ag.SettingSource get_value (string key, ref GLib.Value value);
		public void set_value (string key, GLib.Value? value);
		public void settings_iter_init (Ag.AccountSettingIter iter, string? key_prefix);
		public static bool settings_iter_next (Ag.AccountSettingIter iter, out unowned string key, out GLib.Value value);
		public Ag.Account account { construct; }
		public Ag.Service service { construct; }
		public signal void changed ();
		public signal void enabled (bool enabled);
	}
	[CCode (cheader_filename = "libaccounts-glib/accounts-glib.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", lower_case_csuffix = "account_settings_iter", type_id = "ag_account_settings_iter_get_type ()")]
	[Compact]
	public class AccountSettingIter {
		public weak Ag.Account account;
		public void free ();
		public bool next (out unowned string key, out GLib.Value value);
	}
	[CCode (cheader_filename = "libaccounts-glib/accounts-glib.h")]
	[Compact]
	public class AccountWatch {
	}
	[CCode (cheader_filename = "libaccounts-glib/accounts-glib.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "ag_application_get_type ()")]
	[Compact]
	public class Application {
		public unowned string get_description ();
		public GLib.DesktopAppInfo get_desktop_app_info ();
		public unowned string get_i18n_domain ();
		public unowned string get_name ();
		public unowned string get_service_usage (Ag.Service service);
		public Ag.Application @ref ();
		public void unref ();
	}
	[CCode (cheader_filename = "libaccounts-glib/accounts-glib.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "ag_auth_data_get_type ()")]
	[Compact]
	public class AuthData {
		public uint get_credentials_id ();
		public unowned string get_mechanism ();
		public unowned string get_method ();
		public unowned GLib.HashTable<string,GLib.Value?> get_parameters ();
		public void insert_parameters (GLib.HashTable<string,GLib.Value?> parameters);
		public Ag.AuthData @ref ();
		public void unref ();
	}
	[CCode (cheader_filename = "libaccounts-glib/accounts-glib.h", type_id = "ag_manager_get_type ()")]
	public class Manager : GLib.Object {
		[CCode (has_construct_function = false)]
		public Manager ();
		public Ag.Account create_account (string provider_name);
		[CCode (has_construct_function = false)]
		public Manager.for_service_type (string service_type);
		public bool get_abort_on_db_timeout ();
		public Ag.Account get_account (Ag.AccountId account_id);
		public GLib.List<Ag.AccountService> get_account_services ();
		public Ag.Application get_application (string application_name);
		public uint get_db_timeout ();
		public GLib.List<Ag.AccountService> get_enabled_account_services ();
		public Ag.Provider get_provider (string provider_name);
		public Ag.Service get_service (string service_name);
		public unowned string get_service_type ();
		public GLib.List<Ag.AccountId> list ();
		public GLib.List<Ag.Application> list_applications_by_service (Ag.Service service);
		public GLib.List<Ag.AccountId> list_by_service_type (string service_type);
		public GLib.List<Ag.AccountId> list_enabled ();
		public GLib.List<Ag.AccountId> list_enabled_by_service_type (string service_type);
		public static void list_free (GLib.List<Ag.AccountId> list);
		public GLib.List<Ag.Provider> list_providers ();
		public GLib.List<Ag.ServiceType> list_service_types ();
		public GLib.List<Ag.Service> list_services ();
		public GLib.List<Ag.Service> list_services_by_type (string service_type);
		public Ag.Account load_account (Ag.AccountId account_id) throws GLib.Error;
		public Ag.ServiceType load_service_type (string service_type);
		public void set_abort_on_db_timeout (bool abort);
		public void set_db_timeout (uint timeout_ms);
		public string service_type { get; construct; }
		public signal void account_created (uint account_id);
		public virtual signal void account_deleted (uint id);
		public signal void account_updated (uint account_id);
		public signal void enabled_event (uint account_id);
	}
	[CCode (cheader_filename = "libaccounts-glib/accounts-glib.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "ag_provider_get_type ()")]
	[Compact]
	public class Provider {
		public unowned string get_display_name ();
		public unowned string get_domains_regex ();
		public void get_file_contents (string contents);
		public unowned string get_i18n_domain ();
		public unowned string get_icon_name ();
		public unowned string get_name ();
		public static void list_free (GLib.List<Ag.Provider> list);
		public bool match_domain (string domain);
		public Ag.Provider @ref ();
		public void unref ();
	}
	[CCode (cheader_filename = "libaccounts-glib/accounts-glib.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "ag_service_get_type ()")]
	[Compact]
	public class Service {
		public unowned string get_display_name ();
		public void get_file_contents (string contents, size_t data_offset);
		public unowned string get_i18n_domain ();
		public unowned string get_icon_name ();
		public unowned string get_name ();
		public unowned string get_provider ();
		public unowned string get_service_type ();
		public GLib.List<weak string> get_tags ();
		public bool has_tag (string tag);
		public static void list_free (GLib.List<Ag.Service> list);
		public Ag.Service @ref ();
		public void unref ();
	}
	[CCode (cheader_filename = "libaccounts-glib/accounts-glib.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "ag_service_type_get_type ()")]
	[Compact]
	public class ServiceType {
		public unowned string get_display_name ();
		public void get_file_contents (string contents, size_t len);
		public unowned string get_i18n_domain ();
		public unowned string get_icon_name ();
		public unowned string get_name ();
		public GLib.List<weak string> get_tags ();
		public bool has_tag (string tag);
		public static void list_free (GLib.List<Ag.ServiceType> list);
		public Ag.ServiceType @ref ();
		public void unref ();
	}
	[CCode (cheader_filename = "libaccounts-glib/accounts-glib.h")]
	[SimpleType]
	public struct AccountId : uint {
	}
	[CCode (cheader_filename = "libaccounts-glib/accounts-glib.h", cprefix = "AG_ERROR_")]
	public enum Error {
		DB,
		DISPOSED,
		DELETED,
		DB_LOCKED,
		ACCOUNT_NOT_FOUND
	}
	[CCode (cheader_filename = "libaccounts-glib/accounts-glib.h", cprefix = "AG_SETTING_SOURCE_")]
	public enum SettingSource {
		NONE,
		ACCOUNT,
		PROFILE
	}
	[CCode (cheader_filename = "libaccounts-glib/accounts-glib.h", instance_pos = 2.9)]
	public delegate void AccountNotifyCb (Ag.Account account, string key);
	[CCode (cheader_filename = "libaccounts-glib/accounts-glib.h", instance_pos = 2.9)]
	public delegate void AccountStoreCb (Ag.Account account, GLib.Error error);
	[CCode (cheader_filename = "libaccounts-glib/accounts-glib.h")]
	public static GLib.Quark errors_quark ();
}
