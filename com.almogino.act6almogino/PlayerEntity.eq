
/*
 * PlayerEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayerEntity: SEEntity
{
    SESprite player;

    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        var w = get_scene_width(), h = get_scene_height();  
        rsc.prepare_image("myboo", "boo", w*0.15, h*0.15);
        player = add_sprite_for_image(SEImage.for_resource("myboo"));
        var wp =  player.get_width(), wh = player.get_height();
        player.move(0,h*0.75-wh*0.75);
    }

    public void tick (TimeVal now, double delta) {
        player.move(MainScene.px, MainScene.py);
    }

    public void cleanup() {
        base.cleanup();
    }
}
