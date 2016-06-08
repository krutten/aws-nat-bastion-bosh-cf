# DNS

You'll need to be able to add **multi-level wildcard subdomains** to whatever root domain you plan to use with your deployment through this project. For example:

```
blobstore.run.example.com
```

Would be a multi-level wildcard subdomain that might be used for service discovery of the blobstore. This is just an example of _one_ possibility, though many more will be needed for a minimum viable deployment.

## Potential Providers

```c
#include <std/disclaimer.h>
```

**DISCLAIMER: THE INCLUSION OF THE BELOW PROVIDERS IS ABSOLUTELY NOT IN ANY WAY AN ENDORSEMENT, ADVERTISEMENT, OR IN ANY WAY A COMMERCIAL ENDEAVOR.** There is no official relationship between any of the below entities and the Cloud Foundry Community Project, Pivotal, Inc., Stark and Wayne Ltd., nor between the entity/ies below and/or any employee or associate of any of the foregoing. THE BELOW ENTITIES HAVE _NOT_ PROVIDED FINANCIAL OR OTHER COMPENSATION IN EXCHANGE FOR THEIR INCLUSION HERE.

These are a few providers various engineers working on the project happen to know about. We don't guarantee any specific feature set or minimum supported configuration is available at any of the below; we just happen to remember dealing with them at one point or another and it seemed possible to use their service to orchestrate the DNS piece that you'll need here relatively easily.

| Provider | Free Tier? | Comments |
| :------  | --------:  | :------  |
| [namecheap.com](https://www.namecheap.com) | Y | _Yes, works in FreeDNS mode._ |
| [cloudflare.com](https://www.cloudflare.com) | Y | _Works on free tier_ |

