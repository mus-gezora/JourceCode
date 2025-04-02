package states;

import openfl.system.System;

import backend.Paths;
import backend.Discord;
import backend.Song;

import states.PlayState;

class WhenKneesState extends MusicBeatState
{
    var whenKnees:FlxSprite;
    override public function create()
    {
        trace('hey playtester! this is a secret. if nothing shows up please tell me thx-crafters');
        FlxG.sound.playMusic(Paths.music('whenKnees'), 1, true);

        whenKnees = new FlxSprite();
        whenKnees.loadGraphic(Paths.image('knees'));
        whenKnees.screenCenter();
        whenKnees.scale.set(0.8, 0.8);
        add(whenKnees); 
    }
    override public function update(Elapsed:Float)
    {
        new FlxTimer().start(17, function(_) {
            System.exit(0);
        });

        if(controls.ACCEPT)
        {
            trace('if you didnt get sent to PlayState (back to Imprisonment) pls tell me');
            PlayState.SONG = Song.loadFromJson('imprisonment', 'imprisonment');
            FlxTransitionableState.skipNextTransIn = true;
            MusicBeatState.switchState(new PlayState());
        }
        
    }
}