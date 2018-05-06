//scr_stopFollowing(id)
    //delete off list
            var index = ds_list_find_index(following.followers, id);
            ds_list_delete(following.followers, index);

            //stop following
            leader = following.statTracker;
            following = noone;
            state = "idle";
