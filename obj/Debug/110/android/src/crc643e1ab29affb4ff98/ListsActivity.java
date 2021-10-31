package crc643e1ab29affb4ff98;


public class ListsActivity
	extends android.app.Activity
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onResume:()V:GetOnResumeHandler\n" +
			"n_onCreate:(Landroid/os/Bundle;)V:GetOnCreate_Landroid_os_Bundle_Handler\n" +
			"";
		mono.android.Runtime.register ("List_App.ListsActivity, LIst_App", ListsActivity.class, __md_methods);
	}


	public ListsActivity ()
	{
		super ();
		if (getClass () == ListsActivity.class)
			mono.android.TypeManager.Activate ("List_App.ListsActivity, LIst_App", "", this, new java.lang.Object[] {  });
	}


	public void onResume ()
	{
		n_onResume ();
	}

	private native void n_onResume ();


	public void onCreate (android.os.Bundle p0)
	{
		n_onCreate (p0);
	}

	private native void n_onCreate (android.os.Bundle p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
