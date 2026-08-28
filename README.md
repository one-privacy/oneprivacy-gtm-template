# One Privacy CMP template for Google Tag Manager

A Google Tag Manager custom template that loads the [One Privacy](https://oneprivacy.io) consent banner and sets Google Consent Mode v2 states for you.

## What the tag does

1. Identifies One Privacy to Google with the CMP developer ID `dZjIxNT`, then sets `ads_data_redaction` and `url_passthrough`, all through `gtagSet`.
2. Calls `setDefaultConsentState` once per row of the **Default Consent Settings** table, with the row's regions and a `wait_for_update` delay. With no rows it denies every storage type, except `security_storage`, for every visitor.
3. Reads the `onePrivacyConsent` cookie. If the visitor already made a choice, it calls `updateConsentState` right away so returning visitors keep their settings before any tag runs.
4. Injects the One Privacy banner script for your project.

After the visitor accepts or rejects, the banner sends a Consent Mode update of its own, so Google tags follow the new choice without a second tag in the container.

The banner script is loaded with `?source=gtm-template`, so it does not send its own consent default, `ads_data_redaction`, `url_passthrough`, or developer ID. The template owns those, and the settings above are the only ones that apply.

## Consent categories

The banner groups cookies into four categories. The tag maps them to Consent Mode as shown below.

| One Privacy category | Consent Mode signals |
| --- | --- |
| C0001 Strictly necessary | `security_storage` |
| C0002 Functional | `functionality_storage`, `personalization_storage` |
| C0003 Performance | `analytics_storage` |
| C0004 Targeting | `ad_storage`, `ad_user_data`, `ad_personalization` |

## Setup

1. In One Privacy, open **Banner Configuration → Scripts** and copy your project ID.
2. In Google Tag Manager, open your container and go to **Tags → New**.
3. Choose **One Privacy CMP** from the gallery.
4. Paste your project ID and pick the environment. Use **Live (Production)** for a real site and **Test** for staging.
5. Under **Default Consent Settings**, leave the table empty to deny every type for every visitor, or add rows per region. If you add rows, include an `All` row with everything denied, because the built-in deny-all applies only while the table is empty. A common setup is that `All` row plus one row for the regions where you show no banner with everything granted. Keep it consistent with your One Privacy geo rules.
6. **Other Settings** holds the wait for update delay and the `ads_data_redaction` and `url_passthrough` checkboxes. The defaults suit most sites.
7. Under **Triggering**, choose the built in **Consent Initialization** trigger that covers all pages. This is required, because the tag must run before every other tag.
8. Save the tag, then click **Submit** and **Publish**.

## Settings

| Setting | Default | What it does |
| --- | --- | --- |
| Project ID | none | Identifies your One Privacy project. Required. |
| Environment | Live (Production) | Loads the banner you published to Live, or the one you published to Test. |
| Default Consent Settings | empty (every type denied, regions `All`) | One row per group of regions with the state each consent type starts in. Regions is `All` or comma separated ISO 3166-1 / 3166-2 codes; a more specific region wins. `security_storage` is always granted. |
| Send Consent Mode default and update commands (Other Settings) | on | Off stops every Consent Mode command from the tag and the banner. Block Google tags until consent with the `one-privacy-consent-updated` dataLayer event instead. |
| Wait for update (Other Settings) | 500 | Milliseconds Google tags wait for the visitor's choice. |
| Enable ads_data_redaction (Other Settings) | on | Redacts ad identifiers while `ad_storage` is denied. |
| Enable url_passthrough (Other Settings) | on | Passes ad click information in URLs while storage is denied. |

## Permissions

| Permission | Scope |
| --- | --- |
| Accesses consent state | Read and write for `ad_storage`, `ad_user_data`, `ad_personalization`, `analytics_storage`, `functionality_storage`, `personalization_storage`, `security_storage`, and `wait_for_update`. |
| Writes to data layer | `ads_data_redaction`, `url_passthrough`, `developer_id.dZjIxNT`. |
| Reads cookie values | `onePrivacyConsent`. |
| Injects scripts | `https://api.oneprivacy.io/consent/v1/`. |

## Verifying

Open your site in a fresh browser session and start Google Tag Assistant. Before you answer the banner, all four Consent Mode signals except `security_storage` read **denied**. Accept the banner, and the signals you consented to change to **granted**.

## Support

Documentation lives at [docs.oneprivacy.io](https://docs.oneprivacy.io). For bugs in this template, open an issue on this repository.

## License

Apache License 2.0. See [LICENSE](LICENSE).
