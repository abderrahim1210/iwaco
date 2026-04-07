<?php

namespace App\Http\Controllers;

use App\Events\UserSendMessage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SendMessage extends Controller
{
    public function sendMessage(Request $request)
    {
        $validatedData = $request->validate([
            'name'    => 'required|string|max:100',
            'email'   => 'required|email|max:150',
            'tel'     => 'required|string|min:10',
            'subject' => 'required',
            'text'    => 'required|string|max:2000',
        ]);

        try {
            DB::table('table_message_contact')->insert([
                'name' => $validatedData['name'],
                'email' => $validatedData['email'],
                'tel' => $validatedData['tel'],
                'subject' => $validatedData['subject'],
                'message' => $validatedData['text'],
                'created_at' => now()
            ]);
            event(new UserSendMessage((object) $validatedData));
            return response()->json([
                'success' => true,
                'message' => 'Message sent successfully'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => "Error in " . $e
            ]);
        }
    }
}
