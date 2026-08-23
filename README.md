# One Privacy CMP template for Google Tag Manager

A Google Tag Manager custom template that loads the [One Privacy](https://oneprivacy.io) consent banner and sets Google Consent Mode v2 states for you.

## What the tag does

1. Identifies One Privacy to Google with the CMP developer ID `dZjIxNT`, then sets `ads_data_redaction` and `url_passthrough`, all through `gtagSet`.
2. Calls `setDefaultConsentState` with every storage type denied, except `security_storage`, and a `wait_for_update` delay.
3. Reads the `onePrivacyConsent` cookie. If the visitor already made a choice, it calls `updateConsentState` right away so returning visitors keep their settings before any tag runs.
4. Injects the One Privacy banner script for your project.

After the visitor accepts or rejects, the banner sends a Consent Mode update of its own, so Google tags follow the new choice without a second tag in the container.

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
5. Under **Triggering**, choose the built in **Consent Initialization** trigger that covers all pages. This is required, because the tag must run before every other tag.
6. Save the tag, then click **Submit** and **Publish**.

## Settings

| Setting | Default | What it does |
| --- | --- | --- |
| Project ID | none | Identifies your One Privacy project. Required. |
| Environment | Live (Production) | Loads the banner you published to Live, or the one you published to Test. |
| Wait for update | 500 | Milliseconds Google tags wait for the visitor's choice. |
| Enable ads_data_redaction | on | Redacts ad identifiers while `ad_storage` is denied. |
| Enable url_passthrough | on | Passes ad click information in URLs while storage is denied. |

## Verifying

Open your site in a fresh browser session and start Google Tag Assistant. Before you answer the banner, all four Consent Mode signals except `security_storage` read **denied**. Accept the banner, and the signals you consented to change to **granted**.

## Support

Documentation lives at [docs.oneprivacy.io](https://docs.oneprivacy.io). For bugs in this template, open an issue on this repository.

## License

Apache License 2.0. See [LICENSE](LICENSE).
