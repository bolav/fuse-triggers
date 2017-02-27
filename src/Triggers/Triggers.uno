using Uno;
using Uno.Collections;
using Fuse;
using Fuse.Triggers;

public class Mobile: Trigger
{
	protected override void OnRooted()
	{
		base.OnRooted();
		if defined(mobile)
		{
			Activate();
		}
	}

	protected override void OnUnrooted()
	{
		if defined(mobile)
		{
			Deactivate();
		}
		base.OnUnrooted();
	}
}

public class Desktop: Trigger
{
	protected override void OnRooted()
	{
		base.OnRooted();
		if defined(!mobile)
		{
			Activate();
		}
	}

	protected override void OnUnrooted()
	{
		if defined(!mobile)
		{
			Deactivate();
		}
		base.OnUnrooted();
	}
}
