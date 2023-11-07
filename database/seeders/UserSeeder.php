<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        User::create([
            'name' => 'Admin',
            'email' => 'admin@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'admin',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users2',
            'email' => 'Users2@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users3',
            'email' => 'Users3@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users4',
            'email' => 'Users4@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users5',
            'email' => 'Users5@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users6',
            'email' => 'Users6@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users7',
            'email' => 'Users7@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users8',
            'email' => 'Users8@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users9',
            'email' => 'Users9@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users10',
            'email' => 'Users@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users11',
            'email' => 'Users11@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users12',
            'email' => 'Users12@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users13',
            'email' => 'Users13@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users14',
            'email' => 'Users14@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users15',
            'email' => 'Users15@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users16',
            'email' => 'Users16@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users17',
            'email' => 'Users17@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users18',
            'email' => 'Users18@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users19',
            'email' => 'Users19@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users20',
            'email' => 'Users20@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users21',
            'email' => 'Users21@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users22',
            'email' => 'Users22@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
        User::create([
            'name' => 'Users23',
            'email' => 'Users23@gmail.com',
            'password' => bcrypt('data@1234'),
            'user_type' => 'user',
            'avatar' => 'user.png',
            'status' => 'active'
        ]);
    }
}
