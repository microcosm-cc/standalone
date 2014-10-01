-- Themes

SELECT NEXTVAL('themes_theme_id_seq');
INSERT INTO themes(
    theme_id, title, logo_url, favicon_url, background_url, background_position
) VALUES (
    1, 'Microcosm Default', '/static/themes/1/logo.png', 'https://www.lfgss.com/static/img/favico.png', '/static/themes/1/background.png', 'tile'
);

-- Default user and site owner 'personauser'
-- Adapt this to use your email address if you wish to log in as site owner.

SELECT NEXTVAL('users_user_id_seq');
INSERT INTO users(
    user_id, email, gender, language, created,
    state, password, password_date, dob_day,
    dob_month, dob_year
) VALUES (
    1, 'personauser@microcosm.cc', NULL, 'en-gb', NOW(),
    'email_confirm', 'password_hash', NOW(), NULL,
    NULL, NULL
);

-- Site: root

SELECT *
  FROM create_owned_site(
           'Root', -- site title
           'root', -- subdomain key
           1, --theme id
           1, -- user id
           'PersonaUser', -- profile name
           NULL, -- avatar id
           NULL, -- avatar url
           NULL, -- custom domain
           'Root site for creating and managing sites', -- site description
           NULL, -- logo url
           NULL, -- background url
           'tile', -- background position
           '#FFFFFF', -- background color
           '#4082C3', -- link color
           NULL -- google analytics code
       );

-- Site: dev.microco.sm

SELECT *
  FROM create_owned_site(
           'Microcosm test site', -- site title
           'dev', -- subdomain key
           1, --theme id
           1, -- user id
           'Frodo', -- profile name
           NULL, -- avatar id
           NULL, -- avatar url
           'dev.microco.sm', -- custom domain
           'Microcosm test site', -- site description
           NULL, -- logo url
           NULL, -- background url
           'tile', -- background position
           '#FFFFFF', -- background color
           '#4082C3', -- link color
           NULL -- google analytics code
       );

-- API client token

    SELECT NEXTVAL('oauth_clients_client_id_seq');
    INSERT INTO oauth_clients (
        client_id, name, created, client_secret
    ) VALUES (
        1, 'microweb', NOW(), 'changeme'
    );

    INSERT INTO access_tokens(
        token_value, user_id, client_id
    ) VALUES (
        'changeme', 1, 1
    );
    
