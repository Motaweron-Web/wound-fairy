<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Chat;
use App\Models\User;
use Illuminate\Http\Request;

class ChatController extends Controller
{
    public function index()
    {
        $chats = Chat::orderBy('id', 'DESC')->paginate(5);
        return view('Admin.chat.index', compact('chats'));
    }
    public function destroy($id)
    {
       $chat = Chat::find($id);
       $chat->delete();
        return redirect()->back()->with('message','تم حذف الرسالة بنجاح');
    }
    public function chatForm()
    {
        $users = User::paginate(10);
        return view('Admin.chat.send' ,compact('users'));
    }

    public function getUsers()
    {
        $users = User::paginate(10);
        $output = '
    <table class="table table-bordered table-striped">
	<tr>
		<th width="40%">Username</td>
		<th width="40%">Email</td>

		<th width="20%">Action</td>
	</tr>
';


        foreach ($users as $user){
            $output .= '
	<tr>
		<td>'.$user['name'].'</td>
        <td>'.$user['email'].'</td>
		<td><button type="button" class="btn btn-info btn-xs start_chat" data-touserid="'.$user['id'].'" data-tousername="'.$user['name'].'">Start Chat</button></td>
	</tr>
	';
        }

        $output .= '</table>';
        return $output;
    }

      public function support(){
        $rooms = Room::orderBy('updated_at','desc')->get();
        $users = User::all();
        foreach ($users as $user){
            $room = Room::where('user_id',$user->id)->first();
            if(!$room){
                $new = new Room();
                $new->user_id = $user->id;
                $new->save();
            }
        }
        return view('Admin/contact/support',compact('rooms'));
    }


}
