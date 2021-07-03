<?php

namespace Database\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        DB::table('users')->insert(
            [
                'email' => 'admin@gmail.com',
                'password' => Hash::make(123),
                'name' => 'Admin Supper',
                'role' => 1,
                'phone' => '0377708868',
                'email_verified_at' => Carbon::now()
            ]
        );

        DB::table('categories')->insert(
            [
                [
                    'c_name' => 'Đồng Hồ Chính Hãng',
                    'c_parent_id' => 0,
                    'c_slug' => 'dong-ho-chinh-hang',
                ],
                [
                    'c_name' => 'Kính Mắt',
                    'c_parent_id' => 0,
                    'c_slug' => 'kinh-mat',
                ],
                [
                    'c_name' => 'Phụ Kiện Đồng Hồ',
                    'c_parent_id' => 0,
                    'c_slug' => 'phu-kien-dong-ho',
                ],
            ]
        );

        DB::table('menus')->insert(
            [
                'mn_name' => 'Tin tức - Sự kiện',
                'mn_slug' => 'tin-tuc-su-kien',
            ],
        );
    }
}
