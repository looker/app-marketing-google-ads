# Google Ads

LookML files for analysis of Google Ads. This is designed to work with a ETL and data warehouse adapter that will map the data schema e.g. [Fivetran BigQuery Google Ads](https://github.com/looker/app-marketing-google-ads-fivetran-bigquery).

## To use this block, you will need to:

### Include it in your [manifest.lkml](https://docs.looker.com/reference/manifest-reference):

Note: This requires the Project Import feature currently in /admin/labs to be enabled on your Looker instance.

#### Via local projects:

Fork this repo and create a new project named `app-marketing-google-ads-adapter`

manifest.lkml
```LookML
local_dependency: {
  project: "app-marketing-google-ads-adapter"
}


local_dependency: {
  project: "app-marketing-google-ads"
}```

Or remote dependency which don't require a local version.

manifest.lkml
```LookML

remote_dependency: app-marketing-google-ads-adapter {
  url: "git://github.com/looker/app-marketing-google-ads-fivetran-bigquery"
  ref: "b491583a3ac3a1125e535b5c5855bd56e9aa41a5"
}

remote_dependency: app-marketing-google-ads {
  url: "git://github.com/looker/app-marketing-google-ads"
  ref: "557fa52e9fee322d9a601ee5bf009cf929ef0261"
}```

Note that the `ref:` should point to the latest commit in each respective repo [google-ads-fivetran-bigquery](https://github.com/looker/app-marketing-google-ads-fivetran-bigquery/commits/master) and [google-ads](https://github.com/looker/app-marketing-google-ads/commits/master).

2. Create a `google_ads_config` view that is assumed by this project. This configuration requires a  file

For example:

google_ads_config.view.lkml
```LookML
view: google_ads_config {
  extension: required

  dimension: google_ads_schema {
    hidden: yes
    sql:google_ads;;
  }
}
```

3. Include the view files in your model.

For example:

marketing_analytics.model.lkml
```LookML
include: "/app-marketing-google-ads-adapter/*.view"
include: "/app-marketing-google-ads/*.view"
include: "/app-marketing-google-ads/*.dashboard"
```

### Interface
#### Account Structure

ad.view:
 - ad_adapter
   - external_customer_id
   - campaign_id
   - ad_group_id
   - creative_id
   - creative
   - status_active

ad_group.view:
 - ad_group_adapter
   - external_customer_id
   - campaign_id
   - ad_group_id
   - ad_group_name
   - status_active

campaign.view:
 - campaign_adapter
   - external_customer_id
   - campaign_id
   - campaign_name
   - status_active
   - budget_id
   - amount

customer.view:
 - customer_adapter
   - external_customer_id

#### Targeting Criteria
geo.view
 - geotargeting
   - state
   - country_code
   - name
   - postal_code

keyword.view
 - keyword_adapter
   - external_customer_id
   - campaign_id
   - ad_group_id
   - criterion_id
   - criteria
   - status_active
   - bidding_strategy_type

#### Reports

ad_impressions.view
 - _date
 - ad_network_type
 - device_type
 - cost
 - impressions
 - interactions
 - clicks
 - conversions
 - conversionvalue
 - averageposition

Account Stats
 - ad_impressions_adapter
 - ad_impressions_hour_adapter
   - hour_of_day

Campaign Stats
 - ad_impressions_campaign_adapter
 - ad_impressions_campaign_hour_adapter
   - hour_of_day

Ad Group Stats
 - ad_impressions_ad_group_adapter
 - ad_impressions_ad_group_hour_adapter
   - hour_of_day

Keyword Stats
 - ad_impressions_keyword_adapter

Ad Stats
 - ad_impressions_ad_adapter

Targeting Reports
 - ad_impressions * [age_range, audience, gender, geo, parental_status, video]


### Block Info

This Block is modeled on the schema from Fivetrans's [Google AdWords ETL](https://fivetran.com/directory/google_ads_insights).

The schema documentation for AdWords can be found in [Google's docs](https://developers.google.com/adwords/api/docs/appendix/reports).
