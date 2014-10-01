INSERT INTO item_types(item_type_id, title) VALUES (1, 'site');
INSERT INTO item_types(item_type_id, title) VALUES (2, 'microcosm');
INSERT INTO item_types(item_type_id, title) VALUES (3, 'profile');
INSERT INTO item_types(item_type_id, title) VALUES (4, 'comment');
INSERT INTO item_types(item_type_id, title) VALUES (5, 'huddle');
INSERT INTO item_types(item_type_id, title) VALUES (6, 'conversation');
INSERT INTO item_types(item_type_id, title) VALUES (7, 'poll');
INSERT INTO item_types(item_type_id, title) VALUES (8, 'article');
INSERT INTO item_types(item_type_id, title) VALUES (9, 'event');
INSERT INTO item_types(item_type_id, title) VALUES (10, 'q_and_a');
INSERT INTO item_types(item_type_id, title) VALUES (11, 'classified');
INSERT INTO item_types(item_type_id, title) VALUES (12, 'album');
INSERT INTO item_types(item_type_id, title) VALUES (13, 'attendee');
INSERT INTO item_types(item_type_id, title) VALUES (14, 'user');
INSERT INTO item_types(item_type_id, title) VALUES (15, 'attribute');
INSERT INTO item_types(item_type_id, title) VALUES (16, 'update');
INSERT INTO item_types(item_type_id, title) VALUES (17, 'role');
INSERT INTO item_types(item_type_id, title) VALUES (18, 'update_type');
INSERT INTO item_types(item_type_id, title) VALUES (19, 'watcher');
INSERT INTO item_types(item_type_id, title) VALUES (20, 'auth');
INSERT INTO item_types(item_type_id, title) VALUES (21, 'attachment');

INSERT INTO update_types(
    update_type_id,
    title,
    description,
    email_subject,
    email_body_text,
    email_body_html
) VALUES (
    1,
    'new_comment',
    'When a comment has been posted in an item you are watching',
    'New update on {{.SiteTitle}}',
    'Hi {{.ForProfile.ProfileName}},

A new comment has been made on {{.ContextText}} ({{.ContextLink}})

View other updates: {{.ProtoAndHost}}/updates/settings/

Thanks,

{{.SiteTitle}}

Change your email settings: {{.ProtoAndHost}}/updates/settings/
',
    '<p>Hello {{.ForProfile.ProfileName}},<p>

  <p>A new comment has been made on <a href="{{.ContextLink}}">{{.ContextText}}</a>.</p>

  <blockquote>
    {{.Body}}
    &mdash; <cite style="font-style:normal;"><a href="/profiles/{{.ByProfile.Id}}/">@{{.ByProfile.ProfileName}}</a></cite>
  </blockquote>

  <p><a href="{{.ProtoAndHost}}/updates/">View all of your updates</a>.</p>

  <p>Thanks,</p>

  <p>{{.SiteTitle}}</p>

  <p>Change <a href="{{.ProtoAndHost}}/updates/settings/">your email settings</a>.</p>'
);

INSERT INTO update_types(
    update_type_id,
    title,
    description,
    email_subject,
    email_body_text,
    email_body_html
) VALUES (
    2,
    'reply_to_comment',
    'When a comment of yours is replied to',
    'New comment on {{.SiteTitle}} within {{.ContextText}}',
    'Hi {{.ForProfile.ProfileName}},

A new reply has been made to your comment on {{.ContextText}} ({{.ContextLink}})

View other updates: {{.ProtoAndHost}}/updates/

Thanks,

{{.SiteTitle}}

Change your email settings: {{.ProtoAndHost}}/updates/settings/
',
    '<p>Hello {{.ForProfile.ProfileName}},<p>

  <p>A new reply has been made to your comment on <a href="{{.ContextLink}}">{{.ContextText}}</a>.</p>

  <blockquote>
    {{.Body}}
    &mdash; <cite style="font-style:normal;"><a href="/profiles/{{.ByProfile.Id}}/">@{{.ByProfile.ProfileName}}</a></cite>
  </blockquote>

  <p><a href="{{.ProtoAndHost}}/updates/">View all of your updates</a>.</p>

  <p>Thanks,</p>

  <p>{{.SiteTitle}}</p>

  <p>Change <a href="{{.ProtoAndHost}}/updates/settings/">your email settings</a>.</p>'
);

INSERT INTO update_types(
    update_type_id,
    title,
    description,
    email_subject,
    email_body_text,
    email_body_html
) VALUES (
    3,
    'mentioned',
    'When you are @mentioned in a comment',
    '{{.ByProfile.ProfileName}} has mentioned you on {{.SiteTitle}}',
    'Hi {{.ForProfile.ProfileName}},

You have been mentioned at {{.ContextText}} ({{.ContextLink}})

View other updates: {{.ProtoAndHost}}/updates/

Thanks,

{{.SiteTitle}}

Change your email settings: {{.ProtoAndHost}}/updates/settings/
',
    '<p>Hello {{.ForProfile.ProfileName}},<p>

  <p>You have been mentioned at <a href="{{.ContextLink}}">{{.ContextText}}</a>.</p>

  <blockquote>
    {{.Body}}
    &mdash; <cite style="font-style:normal;"><a href="/profiles/{{.ByProfile.Id}}/">@{{.ByProfile.ProfileName}}</a></cite>
  </blockquote>

  <p><a href="{{.ProtoAndHost}}/updates/">View all of your updates</a>.</p>

  <p>Thanks,</p>

  <p>{{.SiteTitle}}</p>

  <p>Change <a href="{{.ProtoAndHost}}/updates/settings/">your email settings</a>.</p>'
);

INSERT INTO update_types(
    update_type_id,
    title,
    description,
    email_subject,
    email_body_text,
    email_body_html
) VALUES (
    4,
    'new_comment_in_huddle',
    'When you receive a new huddle comment',
    'New comment in a huddle on {{.SiteTitle}}',
    'Hi {{.ForProfile.ProfileName}},

A new comment has been added to a huddle you are a participant in: {{.ContextText}} ({{.ContextLink}})

View other updates: {{.ProtoAndHost}}/updates/

Thanks,

{{.SiteTitle}}

Change your email settings: {{.ProtoAndHost}}/updates/settings/
',
    '<p>Hello {{.ForProfile.ProfileName}},<p>

  <p>A new comment has been added to a huddle you are a participant in <a href="{{.ContextLink}}">{{.ContextText}}</a>.</p>

  <blockquote>
    {{.Body}}
    &mdash; <cite style="font-style:normal;"><a href="/profiles/{{.ByProfile.Id}}/">@{{.ByProfile.ProfileName}}</a></cite>
  </blockquote>

  <p><a href="{{.ProtoAndHost}}/updates/">View all of your updates</a>.</p>

  <p>Thanks,</p>

  <p>{{.SiteTitle}}</p>

  <p>Change <a href="{{.ProtoAndHost}}/updates/settings/">your email settings</a>.</p>'
);

INSERT INTO update_types(
    update_type_id,
    title,
    description,
    email_subject,
    email_body_text,
    email_body_html
) VALUES (
    5,
    'new_attendee',
    'When an attendee added to an event you are watching',
    'New attendee on {{.SiteTitle}} for the event {{.ContextText}}',
    'Hi {{.ForProfile.ProfileName}},

A new attendee is coming to the event {{.ContextText}} ({{.ContextLink}})

View other updates: {{.ProtoAndHost}}/updates/

Thanks,

{{.SiteTitle}}

Change your email settings: {{.ProtoAndHost}}/updates/settings/
',
    '<p>Hello {{.ForProfile.ProfileName}},<p>

  <p>A new attendee is coming to the event <a href="{{.ContextLink}}">{{.ContextText}}</a>.</p>

  <blockquote>
    {{.Body}}
    &mdash; <cite style="font-style:normal;"><a href="/profiles/{{.ByProfile.Id}}/">@{{.ByProfile.ProfileName}}</a></cite>
  </blockquote>

  <p><a href="{{.ProtoAndHost}}/updates/">View all of your updates</a>.</p>

  <p>Thanks,</p>

  <p>{{.SiteTitle}}</p>

  <p>Change <a href="{{.ProtoAndHost}}/updates/settings/">your email settings</a>.</p>'
);

INSERT INTO update_types(
    update_type_id,
    title,
    description,
    email_subject,
    email_body_text,
    email_body_html
) VALUES (
    6,
    'new_vote',
    'When a vote is cast in a poll you are watching',
    'A new vote has been registered on {{.SiteTitle}} in the poll {{.ContextText}}',
    'Hi {{.ForProfile.ProfileName}},

A new vote has been registered on the poll {{.ContextText}} ({{.ContextLink}})

View other updates: {{.ProtoAndHost}}/updates/

Thanks,

{{.SiteTitle}}

Change your email settings: {{.ProtoAndHost}}/updates/settings/
',
    '<p>Hello {{.ForProfile.ProfileName}},<p>

  <p>A new vote has been registered on the poll <a href="{{.ContextLink}}">{{.ContextText}}</a>.</p>

  <blockquote>
    {{.Body}}
    &mdash; <cite style="font-style:normal;"><a href="/profiles/{{.ByProfile.Id}}/">@{{.ByProfile.ProfileName}}</a></cite>
  </blockquote>

  <p><a href="{{.ProtoAndHost}}/updates/">View all of your updates</a>.</p>

  <p>Thanks,</p>

  <p>{{.SiteTitle}}</p>

  <p>Change <a href="{{.ProtoAndHost}}/updates/settings/">your email settings</a>.</p>'
);

INSERT INTO update_types(
    update_type_id,
    title,
    description,
    email_subject,
    email_body_text,
    email_body_html
) VALUES (
    7,
    'event_reminder',
    'When an event you are attending is imminent',
    'An event is imminent on {{.SiteTitle}}, {{.ContextText}}',
    'Hi {{.ForProfile.ProfileName}},

An event is imminent, {{.ContextText}} ({{.ContextLink}})

View other updates: {{.ProtoAndHost}}/updates/

Thanks,

{{.SiteTitle}}

Change your email settings: {{.ProtoAndHost}}/updates/settings/
',
    '<p>Hello {{.ForProfile.ProfileName}},<p>

  <p>An event is imminent <a href="{{.ContextLink}}">{{.ContextText}}</a>.</p>

  <blockquote>
    {{.Body}}
    &mdash; <cite style="font-style:normal;"><a href="/profiles/{{.ByProfile.Id}}/">@{{.ByProfile.ProfileName}}</a></cite>
  </blockquote>

  <p><a href="{{.ProtoAndHost}}/updates/">View all of your updates</a>.</p>

  <p>Thanks,</p>

  <p>{{.SiteTitle}}</p>

  <p>Change <a href="{{.ProtoAndHost}}/updates/settings/">your email settings</a>.</p>'
);

INSERT INTO update_types(
    update_type_id,
    title,
    description,
    email_subject,
    email_body_text,
    email_body_html
) VALUES (
    8,
    'new_item',
    'When a new item is created in a microcosm you are watching',
    'A new item has been created on {{.SiteTitle}} in {{.ContextText}}',
    'Hi {{.ForProfile.ProfileName}},

A new item has been created in {{.ContextText}} ({{.ContextLink}})

View other updates: {{.ProtoAndHost}}/updates/

Thanks,

{{.SiteTitle}}

Change your email settings: {{.ProtoAndHost}}/updates/settings/
',
    '<p>Hello {{.ForProfile.ProfileName}},<p>

  <p>A new item has been created in <a href="{{.ContextLink}}">{{.ContextText}}</a>.</p>

  <blockquote>
    {{.Body}}
    &mdash; <cite style="font-style:normal;"><a href="/profiles/{{.ByProfile.Id}}/">@{{.ByProfile.ProfileName}}</a></cite>
  </blockquote>

  <p><a href="{{.ProtoAndHost}}/updates/">View all of your updates</a>.</p>

  <p>Thanks,</p>

  <p>{{.SiteTitle}}</p>

  <p>Change <a href="{{.ProtoAndHost}}/updates/settings/">your email settings</a>.</p>'
);

INSERT INTO update_options_defaults(update_type_id, send_email, send_sms) VALUES (1, true, false);
INSERT INTO update_options_defaults(update_type_id, send_email, send_sms) VALUES (2, true, false);
INSERT INTO update_options_defaults(update_type_id, send_email, send_sms) VALUES (3, true, false);
INSERT INTO update_options_defaults(update_type_id, send_email, send_sms) VALUES (4, true, false);
INSERT INTO update_options_defaults(update_type_id, send_email, send_sms) VALUES (6, true, false);
INSERT INTO update_options_defaults(update_type_id, send_email, send_sms) VALUES (5, true, false);
INSERT INTO update_options_defaults(update_type_id, send_email, send_sms) VALUES (7, true, false);
INSERT INTO update_options_defaults(update_type_id, send_email, send_sms) VALUES (8, true, false);

INSERT INTO platform_options(send_email, send_sms) VALUES (true, false);

-- // The numerical order is implicitly important (it's the sort field)
INSERT INTO attendee_state(state_id, title) VALUES (1, 'yes');
INSERT INTO attendee_state(state_id, title) VALUES (2, 'maybe');
INSERT INTO attendee_state(state_id, title) VALUES (3, 'invited');
INSERT INTO attendee_state(state_id, title) VALUES (4, 'no');

INSERT INTO value_types(value_type_id, title) VALUES (1, 'string');
INSERT INTO value_types(value_type_id, title) VALUES (2, 'date');
INSERT INTO value_types(value_type_id, title) VALUES (3, 'number');
INSERT INTO value_types(value_type_id, title) VALUES (4, 'boolean');


-- YouTube

INSERT INTO rewrite_domains (domain_regex) VALUES ('[\w]+\.youtube\.[\w]+');
INSERT INTO rewrite_domains (domain_regex) VALUES ('[\w]+\.youtu\.be');

INSERT INTO rewrite_rules (
    "name"
   ,match_regex
   ,replace_regex
   ,is_enabled
) VALUES (
    'YouTube'
   ,'(?:http|https|)(?::\/\/|)(?:www.|)(?:youtu\.be\/|youtube\.com(?:\/embed\/|\/v\/|\/watch\?v=|\/ytscreeningroom\?v=|\/feeds\/api\/videos\/|\/user\S*[^\w\-\s]|\S*[^\w\-\s]))([\w\-]{11})[a-z0-9;:@?&%=+\/\$_.-]*'
   ,'<iframe width="560" height="315" src="//www.youtube.com/embed/$1" frameborder="0" allowfullscreen></iframe>'
   ,true
);

INSERT INTO rewrite_domain_rules (domain_id, rule_id) VALUES (1,1);
INSERT INTO rewrite_domain_rules (domain_id, rule_id) VALUES (2,1);

-- Strava

INSERT INTO rewrite_domains (domain_regex) VALUES ('[\w]+\.strava\.[\w]+');

INSERT INTO rewrite_rules (
    "name"
   ,match_regex
   ,replace_regex
   ,is_enabled
   ,sequence
) VALUES (
    'Strava Club Summary'
   ,'(https?://(app|www).strava.com/clubs/[0-9]+/latest-rides/[a-f0-9]+(\?show_rides=false)?)'
   ,'<iframe height="160" width="460" frameborder="0" allowtransparency="true" scrolling="no" src="$1"></iframe>'
   ,true
   ,99
);

INSERT INTO rewrite_rules (
    "name"
   ,match_regex
   ,replace_regex
   ,is_enabled
   ,sequence
) VALUES (
    'Strava Recent Rides'
   ,'(https?://(app|www).strava.com/(clubs/[0-9]+/latest-rides/[a-f0-9]+(\?show_rides=true)|athletes/[0-9]+/latest-rides/[a-f0-9]+))'
   ,'<iframe height="454" width="300" frameborder="0" allowtransparency="true" scrolling="no" src="$1"></iframe>'
   ,true
   ,50
);

INSERT INTO rewrite_rules (
    "name"
   ,match_regex
   ,replace_regex
   ,is_enabled
   ,sequence
) VALUES (
    'Strava Course Segment'
   ,'https?://(?:app|www).strava.com/segments/[a-z0-9-]+-([0-9]+)'
   ,'<iframe height="360" width="460" frameborder="0" allowtransparency="true" scrolling="no" src="http://www.strava.com/segments/$1/embed"></iframe>'
   ,true
   ,99
);

INSERT INTO rewrite_rules (
    "name"
   ,match_regex
   ,replace_regex
   ,is_enabled
   ,sequence
) VALUES (
    'Strava Course Segment'
   ,'(https?://(?:app|www).strava.com/activities/[0-9]+/embed/[a-f0-9-]+)'
   ,'<iframe height="404" width="590" frameborder="0" allowtransparency="true" scrolling="no" src="$1"></iframe>'
   ,true
   ,99
);

INSERT INTO rewrite_rules (
    "name"
   ,match_regex
   ,replace_regex
   ,is_enabled
   ,sequence
) VALUES (
    'Strava Activity Summary'
   ,'(https?://(?:app|www).strava.com/athletes/[0-9]+/activity-summary/[a-f0-9-]+)'
   ,'<iframe height="360" width="360" frameborder="0" allowtransparency="true" scrolling="no" src="$1"></iframe>'
   ,true
   ,99
);

INSERT INTO rewrite_domain_rules (domain_id, rule_id) VALUES (3,2);
INSERT INTO rewrite_domain_rules (domain_id, rule_id) VALUES (3,3);
INSERT INTO rewrite_domain_rules (domain_id, rule_id) VALUES (3,4);
INSERT INTO rewrite_domain_rules (domain_id, rule_id) VALUES (3,5);
INSERT INTO rewrite_domain_rules (domain_id, rule_id) VALUES (3,6);

-- Garmin

INSERT INTO rewrite_domains (domain_regex) VALUES ('[\w]+\.garmin\.[\w]+');

INSERT INTO rewrite_rules (
    "name"
   ,match_regex
   ,replace_regex
   ,is_enabled
   ,sequence
) VALUES (
    'Garmin Course'
   ,'https?:\/\/connect\.garmin\.com\/course\/([0-9]+)'
   ,'<iframe width="560" height="600" frameborder="0" src="http://connect.garmin.com/course/embed/$1"></iframe>'
   ,true
   ,99
);

INSERT INTO rewrite_domain_rules (domain_id, rule_id) VALUES (4,7);

-- Vimeo

INSERT INTO rewrite_domains (domain_regex) VALUES ('(?:[\w]+\.)?vimeo\.[\w]+');

INSERT INTO rewrite_rules (
    "name"
   ,match_regex
   ,replace_regex
   ,is_enabled
   ,sequence
) VALUES (
    'Vimeo'
   ,'https?://(?:[\w]+.)?vimeo.com\/(?:(?:groups\/[^\/]+\/videos\/)|(?:video\/))?([0-9]+).*'
   ,'<iframe src="//player.vimeo.com/video/$1" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>'
   ,true
   ,99
);

INSERT INTO rewrite_domain_rules (domain_id, rule_id) VALUES (5,8);

-- Garmin again

INSERT INTO rewrite_rules (
    "name"
   ,match_regex
   ,replace_regex
   ,is_enabled
   ,sequence
) VALUES (
    'Garmin Activity'
   ,'https?:\/\/connect\.garmin\.com\/activity\/([0-9]+)'
   ,'<iframe width="465" height="548" frameborder="0" src="http://connect.garmin.com/activity/embed/$1"></iframe>'
   ,true
   ,99
);

INSERT INTO rewrite_domain_rules (domain_id, rule_id) VALUES (4,9);

-- Google Calendar

INSERT INTO rewrite_domains (domain_id, domain_regex) VALUES (6, 'www\.google\.com');

INSERT INTO rewrite_rules (
  rule_id
   ,"name"
   ,match_regex
   ,replace_regex
   ,is_enabled
) VALUES (
    10
   ,'Google Calendar'
   ,'(https?://www.google.com/calendar/embed.*)'
   ,'<iframe src="$1" style="border: 0" width="100%" height="600" frameborder="0" scrolling="no"></iframe>'
   ,true
);

INSERT INTO rewrite_domain_rules (domain_id, rule_id) VALUES (6,10);
