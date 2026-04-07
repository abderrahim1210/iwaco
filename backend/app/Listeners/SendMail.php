<?php

namespace App\Listeners;

use App\Events\UserSendMessage;
use App\Mail\WelcomeMail;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Mail;

class SendMail
{
    /**
     * Create the event listener.
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     */
    public function handle(UserSendMessage $event): void
    {
        Mail::to($event->user->email)->send(new WelcomeMail($event->user));
    }
}
