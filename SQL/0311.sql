
UPDATE streaming_preference SET daily_viewers = 12232 WHERE streaming_id = 11;
UPDATE streaming_preference SET likes = 10000 WHERE streaming_id = 11;

UPDATE streamer SET streamer_image = 'streamer_profile_66' WHERE streamer_idx = 6;

UPDATE streaming_info SET streaming_description = '코딩 is fun' WHERE streaming_id = 3;
UPDATE streaming_info SET streaming_description = '코딩유잼' WHERE streaming_id = 4;

commit;
