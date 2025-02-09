<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Session;
use \App\Models\Image;
use \App\Models\Player;


class ImageController extends Controller
{


    public function index(Request $request){

        if($request->hasFile('image') && count($request->file('image')) > 0){
            foreach($request->file('image') as $file){
                $image = new Image();
                if($file->isValid()){
                    $image->image_name = $file->store('images','public');
                    $image->save();
                }
                else{
                    return redirect()->route('image.index')->with('error', 'Помилка підвантаження файлів');
                }
            }
            return redirect()->route('image.index')->with('success','Файли успішно завантажено');
        }

        return view('index');
    }

    public function refresh(Request $request){
        Session::flush();

        Session::put('playerName', $request->playerName);

        Session::put('timeStart', time()+120); // Початок проходження + Час який дається для гри
        return redirect()->route('image.create');
    }


    public function continue(){

        Session::forget(['id','num']);

        return redirect()->route('image.create');
    }

    public function start(Request $request){

        if(Session::get('timeStart') - time() <= 0){
            return redirect()->route('image.end');
        }


        $array = Session::get('images');
        $fakeArray = Session::get('fakeArray');

        $num = Session::get('num');

        if($num == 2){
            $id = Session::get('id');

            if($fakeArray[$id[0]] != $fakeArray[$id[1]]){
                $fakeArray[$id[0]] = Storage::url('images/noPhoto.png');
                $fakeArray[$id[1]] = Storage::url('images/noPhoto.png');
                Session::put('fakeArray', $fakeArray);
            }
            Session::forget('num');
            Session::forget('id');

        }

        // Change
        if(isset($request->id)){
            // Change
            $fakeArray[$request->id] = $array[$request->id];
            Session::put('fakeArray', $fakeArray);

            // Check
            $num = Session::get('num');

            if(empty($num)){
                $num = 1;
                Session::put('id',[$request->id]);
            }
            else{
                $num++;
                $id = Session::get('id');
                $id[] = $request->id;
                Session::put('id',$id);
                if($fakeArray[$id[0]] != $fakeArray[$id[1]]) {
                    header('Refresh: 1; URL=/start');
                }
                else{
                    if($this->check()){
                        if(!empty(Session::get('points'))){
                            Session::put('points', Session::get('points') + 1);
                        }
                        else{
                            Session::put('points', 1);
                        }
                        return redirect()->route('image.continue');
                    }
                }
            }

            Session::put('num', $num);

        }
        $points = Session::get('points');

        $timeLeft = Session::get('timeStart') - time();

        return view('game', compact('array', 'fakeArray', 'timeLeft', 'points'));

    }

    public function check(){

        $fakeArray = Session::get('fakeArray');

        $tmp = true;
        foreach($fakeArray as $img){
            if($img == Storage::url('images/noPhoto.png')){
                $tmp = false;
            }
        }

        return $tmp;
    }

    public function game($id){

        $num = Session::get('num');
        if(!isset($num) || empty($num)){
            $num = 1;
            Session::put('num', $num);
            Session::put('id', $id);
        }
        else{
            if($this->fakeArray[Session::get('id')] != $this->fakeArray[$id]){
                $this->fakeArray[Session::get('id')] = Storage::url('images/noPhoto.png');
                $this->fakeArray[$id] = Storage::url('images/noPhoto.png');
                Session::put('fakeArray', $this->fakeArray);
            }
            Session::forget('num');
        }

        redirect()->route('image.start');
        //return view('game', compact('array', 'fakeArray'));

    }

    public function create(){

        $images = Image::all()->random(8);

        foreach($images as $image){
            $images[] = $image;
        }

        $images = $images->shuffle();

        $array = [];
        $fakeArray = [];
        foreach($images as $image){
            $array[] = Storage::url($image->image_name);
            $fakeArray[] = Storage::url('images/noPhoto.png');
        }
        Session::put('fakeArray', $fakeArray);
        Session::put('images', $array);

        $fakeArray = $array;

        $timeLeft = Session::get('timeStart') - time();

        $points = Session::get('points');

        header('Refresh: 5; URL=/start');

        return view('game', compact('fakeArray', 'timeLeft', 'points'));
    }

    public function end(){
        $fakeArray = Session::get('fakeArray');
        $points = Session::get('points');

        $endTime = time() - Session::get('timeStart');

        Session::forget('timeStart');

        $this->playerAdd();
        $playerName = Session::get('playerName');

        $players = Player::all()->sortByDesc('points');


        return view('end', compact('fakeArray', 'endTime','points','players','playerName'));
    }

    public function playerAdd(){

        $player = Player::all()->where('name', '=',Session::get('playerName'))->first();

        if(Session::get('points') == null){
            Session::put('points', 0);
        }

        if(isset($player)){
            if($player->points < Session::get('points')){
                $player->points = Session::get('points');
            }
            $player->update();
        }
        else{
            $player = new Player();
            $player->name = Session::get('playerName');
            $player->points = Session::get('points');
            $player->save();
        }

        return true;
    }

    public function delete($playerName){

        $player = Player::all()->where('name', '=',$playerName)->first();

        $player->delete();

        return redirect()->route('image.index')->with('success',"Дані користувача '$playerName' були видалені");
    }






}
