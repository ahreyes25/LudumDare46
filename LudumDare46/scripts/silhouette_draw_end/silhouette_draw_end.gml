/// @desc Silhouette
gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

gpu_set_fog(true, silhouette_color, 0, 1);
draw_self();
gpu_set_fog(false, global.tint_color, 0, 0);

gpu_set_blendmode(bm_normal);
gpu_set_alphatestenable(false);