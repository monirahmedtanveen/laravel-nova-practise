<?php

namespace Fastpay\Editprofile\Http\Controllers;

use Illuminate\Routing\Controller;

class UserProfileController extends Controller
{
    public function index()
    {
        return response()->json(
            [
                "name" => auth()->user()->name,
                "email" => auth()->user()->email,
                "user_type" => auth()->user()->user_type,
                "user_types" => [
                    'Admin',
                    'Merchant',
                    'Vendor',
                    'Normal',
                ],
                "password" => null,
                "password_confirmation" => null,
            ]
        );
    }

    public function store()
    {
        request()->validate([
            'name' => 'required|string',
            'email' => 'required|email',
            'password' => 'nullable|string|confirmed'
        ]);

        if(request()->filled('password')) {
            auth()->user()->update([
                'name' => request('name'),
                'email' => request('email'),
                'user_type' => request('user_type'),
                'password' => bcrypt(request('password')),
            ]);
        } else {
            auth()->user()->update(request()->only('name', 'email', 'user_type'));
        }

        return response()->json(__("Your profile has been updated!"));
    }
}
