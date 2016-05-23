<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
     public function run()
     {
         $admin = new \App\User();
         $admin->name = 'Admin';
         $admin->email = 'admin@gmail.com';
         $admin->password = Hash::make('123456');
         $admin->save();

         $user           = new \App\User();
         $user->name     = 'User';
         $user->email    = 'user@gmail.com';
         $admin->password = Hash::make('123456');
         $user->save();
     }


}
