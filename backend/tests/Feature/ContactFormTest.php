<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Support\Facades\Mail;
use App\Mail\WelcomeMail;
use Tests\TestCase;

class ContactFormTest extends TestCase
{
    use RefreshDatabase;

    /** @test */
    public function le_formulaire_de_contact_enregistre_et_envoie_un_mail()
    {
        Mail::fake();

        $payload = [
            'name'    => 'Abdou Developer',
            'email'   => 'abdou@filenest.com',
            'tel'     => '0612345678',
            'subject' => 'support',
            'text'    => 'Salam, hada test dyal l-logic dyalna.',
        ];

        $response = $this->postJson('/send_message', $payload);

        $response->assertStatus(200)
                 ->assertJson(['success' => true]);

        $this->assertDatabaseHas('table_message_contact', [
            'email' => 'abdou@filenest.com'
        ]);

        Mail::assertSent(WelcomeMail::class);
    }
}