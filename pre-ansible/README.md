# Usage
I have two use cases currently:
* run ansible on a vagrant provisioned VM on Windows
* run ansible on a vanilla VM, e.g. cloud hosting

Since it is a hassle to get ansible running on Windows, in both cases I need to install ansible in order for it to provision the machine it is running on, i.e. the "client" instead of the Windows host.

The major difference beeing, that vagrant already takes care of creating a limited account user. My cloud provider does not.
