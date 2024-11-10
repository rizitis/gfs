/* webkitgtk-web-extension-6.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "WebKit", gir_namespace = "WebKitWebExtension", gir_version = "6.0", lower_case_cprefix = "webkit_")]
namespace WebKit {
	[CCode (cheader_filename = "webkit/webkit-web-extension.h", type_id = "webkit_context_menu_get_type ()")]
	public sealed class ContextMenu : GLib.Object {
		[CCode (has_construct_function = false)]
		public ContextMenu ();
		public void append (WebKit.ContextMenuItem item);
		public unowned WebKit.ContextMenuItem first ();
		[Version (since = "2.40")]
		public unowned Gdk.Event get_event ();
		public unowned WebKit.ContextMenuItem get_item_at_position (uint position);
		public unowned GLib.List<WebKit.ContextMenuItem> get_items ();
		public uint get_n_items ();
		[Version (since = "2.8")]
		public unowned GLib.Variant get_user_data ();
		public void insert (WebKit.ContextMenuItem item, int position);
		public unowned WebKit.ContextMenuItem last ();
		public void move_item (WebKit.ContextMenuItem item, int position);
		public void prepend (WebKit.ContextMenuItem item);
		public void remove (WebKit.ContextMenuItem item);
		public void remove_all ();
		[Version (since = "2.8")]
		public void set_user_data (GLib.Variant user_data);
		[CCode (has_construct_function = false)]
		public ContextMenu.with_items (GLib.List<WebKit.ContextMenuItem> items);
	}
	[CCode (cheader_filename = "webkit/webkit-web-extension.h", type_id = "webkit_context_menu_item_get_type ()")]
	public sealed class ContextMenuItem : GLib.InitiallyUnowned {
		[CCode (has_construct_function = false)]
		protected ContextMenuItem ();
		[CCode (has_construct_function = false)]
		[Version (since = "2.18")]
		public ContextMenuItem.from_gaction (GLib.Action action, string label, GLib.Variant? target);
		[CCode (has_construct_function = false)]
		public ContextMenuItem.from_stock_action (WebKit.ContextMenuAction action);
		[CCode (has_construct_function = false)]
		public ContextMenuItem.from_stock_action_with_label (WebKit.ContextMenuAction action, string label);
		[Version (since = "2.18")]
		public unowned GLib.Action get_gaction ();
		public WebKit.ContextMenuAction get_stock_action ();
		public unowned WebKit.ContextMenu get_submenu ();
		public bool is_separator ();
		[CCode (has_construct_function = false)]
		public ContextMenuItem.separator ();
		public void set_submenu (WebKit.ContextMenu? submenu);
		[CCode (has_construct_function = false)]
		public ContextMenuItem.with_submenu (string label, WebKit.ContextMenu submenu);
	}
	[CCode (cheader_filename = "webkit/webkit-web-extension.h", type_id = "webkit_frame_get_type ()")]
	[Version (since = "2.26")]
	public sealed class Frame : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Frame ();
		public uint64 get_id ();
		[Version (since = "2.22")]
		public JSC.Context get_js_context ();
		[Version (since = "2.22")]
		public JSC.Context get_js_context_for_script_world (WebKit.ScriptWorld world);
		[Version (since = "2.2")]
		public unowned string get_uri ();
		[Version (since = "2.2")]
		public bool is_main_frame ();
	}
	[CCode (cheader_filename = "webkit/webkit-web-extension.h", type_id = "webkit_hit_test_result_get_type ()")]
	public sealed class HitTestResult : GLib.Object {
		[CCode (has_construct_function = false)]
		protected HitTestResult ();
		public bool context_is_editable ();
		public bool context_is_image ();
		public bool context_is_link ();
		public bool context_is_media ();
		public bool context_is_scrollbar ();
		[Version (since = "2.8")]
		public bool context_is_selection ();
		public uint get_context ();
		public unowned string get_image_uri ();
		public unowned string get_link_label ();
		public unowned string get_link_title ();
		public unowned string get_link_uri ();
		public unowned string get_media_uri ();
		public uint context { get; construct; }
		public string image_uri { get; construct; }
		public string link_label { get; construct; }
		public string link_title { get; construct; }
		public string link_uri { get; construct; }
		public string media_uri { get; construct; }
	}
	[CCode (cheader_filename = "webkit/webkit-web-extension.h", type_id = "webkit_script_world_get_type ()")]
	public sealed class ScriptWorld : GLib.Object {
		[CCode (has_construct_function = false)]
		[Version (since = "2.2")]
		public ScriptWorld ();
		[Version (since = "2.2")]
		public static unowned WebKit.ScriptWorld get_default ();
		[Version (since = "2.22")]
		public unowned string get_name ();
		[CCode (has_construct_function = false)]
		[Version (since = "2.22")]
		public ScriptWorld.with_name (string name);
		[Version (since = "2.2")]
		public signal void window_object_cleared (WebKit.WebPage page, WebKit.Frame frame);
	}
	[CCode (cheader_filename = "webkit/webkit-web-extension.h", type_id = "webkit_uri_request_get_type ()")]
	public sealed class URIRequest : GLib.Object {
		[CCode (has_construct_function = false)]
		public URIRequest (string uri);
		public unowned Soup.MessageHeaders get_http_headers ();
		[Version (since = "2.12")]
		public unowned string get_http_method ();
		public unowned string get_uri ();
		public void set_uri (string uri);
		public string uri { get; set construct; }
	}
	[CCode (cheader_filename = "webkit/webkit-web-extension.h", type_id = "webkit_uri_response_get_type ()")]
	public sealed class URIResponse : GLib.Object {
		[CCode (has_construct_function = false)]
		protected URIResponse ();
		public uint64 get_content_length ();
		[Version (since = "2.6")]
		public unowned Soup.MessageHeaders get_http_headers ();
		public unowned string get_mime_type ();
		public uint get_status_code ();
		public unowned string get_suggested_filename ();
		public unowned string get_uri ();
		public uint64 content_length { get; }
		[Version (since = "2.6")]
		public Soup.MessageHeaders http_headers { get; }
		public string mime_type { get; }
		public uint status_code { get; }
		public string suggested_filename { get; }
		public string uri { get; }
	}
	[CCode (cheader_filename = "webkit/webkit-web-extension.h", type_id = "webkit_user_message_get_type ()")]
	[Version (since = "2.28")]
	public sealed class UserMessage : GLib.InitiallyUnowned {
		[CCode (has_construct_function = false)]
		public UserMessage (string name, GLib.Variant? parameters);
		public static GLib.Quark error_quark ();
		public unowned GLib.UnixFDList? get_fd_list ();
		public unowned string get_name ();
		public unowned GLib.Variant? get_parameters ();
		public void send_reply (WebKit.UserMessage reply);
		[CCode (has_construct_function = false)]
		public UserMessage.with_fd_list (string name, GLib.Variant? parameters, GLib.UnixFDList? fd_list);
		public GLib.UnixFDList fd_list { get; construct; }
		public string name { get; construct; }
		public GLib.Variant parameters { get; construct; }
	}
	[CCode (cheader_filename = "webkit/webkit-web-extension.h", type_id = "webkit_web_editor_get_type ()")]
	[Version (since = "2.10")]
	public sealed class WebEditor : GLib.Object {
		[CCode (has_construct_function = false)]
		protected WebEditor ();
		public unowned WebKit.WebPage get_page ();
		public signal void selection_changed ();
	}
	[CCode (cheader_filename = "webkit/webkit-web-extension.h", type_id = "webkit_web_extension_get_type ()")]
	public sealed class WebExtension : GLib.Object {
		[CCode (has_construct_function = false)]
		protected WebExtension ();
		public unowned WebKit.WebPage get_page (uint64 page_id);
		[Version (since = "2.28")]
		public async WebKit.UserMessage send_message_to_context (WebKit.UserMessage message, GLib.Cancellable? cancellable) throws GLib.Error;
		public signal void page_created (WebKit.WebPage web_page);
		[Version (since = "2.28")]
		public signal void user_message_received (WebKit.UserMessage message);
	}
	[CCode (cheader_filename = "webkit/webkit-web-extension.h", type_id = "webkit_web_form_manager_get_type ()")]
	[Version (since = "2.40")]
	public class WebFormManager : GLib.Object {
		[CCode (has_construct_function = false)]
		protected WebFormManager ();
		public static void input_element_auto_fill (JSC.Value element, string value);
		public static bool input_element_is_auto_filled (JSC.Value element);
		public static bool input_element_is_user_edited (JSC.Value element);
		public signal void form_controls_associated (WebKit.Frame frame, GLib.GenericArray<JSC.Value> elements);
		public signal void will_send_submit_event (JSC.Value form, WebKit.Frame source_frame, WebKit.Frame target_frame);
		public signal void will_submit_form (JSC.Value form, WebKit.Frame source_frame, WebKit.Frame target_frame);
	}
	[CCode (cheader_filename = "webkit/webkit-web-extension.h", type_id = "webkit_web_hit_test_result_get_type ()")]
	[Version (since = "2.8")]
	public sealed class WebHitTestResult : GLib.Object {
		[CCode (has_construct_function = false)]
		protected WebHitTestResult ();
		public bool context_is_editable ();
		public bool context_is_image ();
		public bool context_is_link ();
		public bool context_is_media ();
		public bool context_is_scrollbar ();
		public bool context_is_selection ();
		public uint get_context ();
		public unowned string get_image_uri ();
		[Version (since = "2.40")]
		public JSC.Value? get_js_node (WebKit.ScriptWorld? world);
		public unowned string get_link_label ();
		public unowned string get_link_title ();
		public unowned string get_link_uri ();
		public unowned string get_media_uri ();
	}
	[CCode (cheader_filename = "webkit/webkit-web-extension.h", type_id = "webkit_web_page_get_type ()")]
	public sealed class WebPage : GLib.Object {
		[CCode (has_construct_function = false)]
		protected WebPage ();
		[Version (since = "2.10")]
		public unowned WebKit.WebEditor get_editor ();
		[Version (since = "2.40")]
		public unowned WebKit.WebFormManager get_form_manager (WebKit.ScriptWorld? world);
		public uint64 get_id ();
		[Version (since = "2.2")]
		public unowned WebKit.Frame get_main_frame ();
		public unowned string get_uri ();
		[Version (since = "2.28")]
		public async WebKit.UserMessage send_message_to_view (WebKit.UserMessage message, GLib.Cancellable? cancellable) throws GLib.Error;
		public string uri { get; }
		[Version (since = "2.8")]
		public signal bool context_menu (WebKit.ContextMenu context_menu, WebKit.WebHitTestResult hit_test_result);
		public signal void document_loaded ();
		public signal bool send_request (WebKit.URIRequest request, WebKit.URIResponse redirected_response);
		[Version (since = "2.28")]
		public signal bool user_message_received (WebKit.UserMessage message);
	}
	[CCode (cheader_filename = "webkit/webkit-web-extension.h", cprefix = "WEBKIT_CONTEXT_MENU_ACTION_", has_type_id = false)]
	public enum ContextMenuAction {
		NO_ACTION,
		OPEN_LINK,
		OPEN_LINK_IN_NEW_WINDOW,
		DOWNLOAD_LINK_TO_DISK,
		COPY_LINK_TO_CLIPBOARD,
		OPEN_IMAGE_IN_NEW_WINDOW,
		DOWNLOAD_IMAGE_TO_DISK,
		COPY_IMAGE_TO_CLIPBOARD,
		COPY_IMAGE_URL_TO_CLIPBOARD,
		OPEN_FRAME_IN_NEW_WINDOW,
		GO_BACK,
		GO_FORWARD,
		STOP,
		RELOAD,
		COPY,
		CUT,
		PASTE,
		DELETE,
		SELECT_ALL,
		INPUT_METHODS,
		UNICODE,
		SPELLING_GUESS,
		NO_GUESSES_FOUND,
		IGNORE_SPELLING,
		LEARN_SPELLING,
		IGNORE_GRAMMAR,
		FONT_MENU,
		BOLD,
		ITALIC,
		UNDERLINE,
		OUTLINE,
		INSPECT_ELEMENT,
		OPEN_VIDEO_IN_NEW_WINDOW,
		OPEN_AUDIO_IN_NEW_WINDOW,
		COPY_VIDEO_LINK_TO_CLIPBOARD,
		COPY_AUDIO_LINK_TO_CLIPBOARD,
		TOGGLE_MEDIA_CONTROLS,
		TOGGLE_MEDIA_LOOP,
		ENTER_VIDEO_FULLSCREEN,
		MEDIA_PLAY,
		MEDIA_PAUSE,
		MEDIA_MUTE,
		DOWNLOAD_VIDEO_TO_DISK,
		DOWNLOAD_AUDIO_TO_DISK,
		INSERT_EMOJI,
		PASTE_AS_PLAIN_TEXT,
		CUSTOM
	}
	[CCode (cheader_filename = "webkit/webkit-web-extension.h", cprefix = "WEBKIT_HIT_TEST_RESULT_CONTEXT_", has_type_id = false)]
	[Flags]
	public enum HitTestResultContext {
		DOCUMENT,
		LINK,
		IMAGE,
		MEDIA,
		EDITABLE,
		SCROLLBAR,
		SELECTION
	}
	[CCode (cheader_filename = "webkit/webkit-web-extension.h", cprefix = "WEBKIT_USER_MESSAGE_UNHANDLED_", has_type_id = false)]
	[Version (since = "2.28")]
	public enum UserMessageError {
		[CCode (cname = "WEBKIT_USER_MESSAGE_UNHANDLED_MESSAGE")]
		USER_MESSAGE_UNHANDLED_MESSAGE
	}
	[CCode (cheader_filename = "webkit/webkit-web-extension.h", has_target = false)]
	public delegate void WebExtensionInitializeFunction (WebKit.WebExtension extension);
	[CCode (cheader_filename = "webkit/webkit-web-extension.h", has_target = false)]
	[Version (since = "2.4")]
	public delegate void WebExtensionInitializeWithUserDataFunction (WebKit.WebExtension extension, GLib.Variant user_data);
}
