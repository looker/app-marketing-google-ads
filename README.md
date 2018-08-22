# Marketing Analytics by Looker

### Using as an App

To use as an app, you first need to add a Google adapter in a project named `ama_adwords_adapter` and a Facebook adapter in a project named `ama_fb_adapter` as specified in the manifest.lkml.

By default `ama_adwords_adapter` can be connected to the [AdWords BQDTS model](https://github.com/looker/ama_adwords_bqdts_adapter) and `ama_fb_adapter` to either Stitch's [Facebook Ads model](https://github.com/looker/ama_fb_stitch_adapter) or Fivetran's  [Facebook Ads model](https://github.com/looker/ama_fb_fivetran_adapter).

The Google Adapter is assumed to pass the following explores and views:

#### Account Structure

ad.view:
 - ad_adapter

ad_group.view:
 - ad_group_adapter

campaign.view:
 - campaign_adapter

customer.view:
 - customer_adapter

#### Targeting Criteria

age_range.view
 - age_range

audience.view
 - audience_adapter

gender.view
 - gender_adapter

geo.view
 - geotargeting

keyword.view
 - keyword_adapter

parental_status.view
 - parental_status

video.view
 - video

#### Reports

ad_impressions.view

Account Stats
 - ad_impressions_adapter
 - ad_impressions_hour_adapter

Campaign Stats
 - ad_impressions_campaign_adapter
 - ad_impressions_campaign_hour_adapter

Ad Group Stats
 - ad_impressions_ad_group_adapter
 - ad_impressions_ad_group_hour_adapter

Keyword Stats
 - ad_impressions_keyword_adapter

Ad Stats
 - ad_impressions_ad_adapter

Targeting Reports
 - ad_impressions * [age_range, audience, gender, geo, parental_status, video]
