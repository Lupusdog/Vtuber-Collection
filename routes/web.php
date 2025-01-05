<?php

use Illuminate\Support\Facades\Route;

use App\Http\Livewire\Home;

Route::view('/', 'home')
    ->name('home');

Route::view('dashboard', 'home')
    ->middleware(['auth', 'verified'])
    ->name('dashboard');

Route::view('profile', 'profile')
    ->middleware(['auth'])
    ->name('profile');

require __DIR__.'/auth.php';
