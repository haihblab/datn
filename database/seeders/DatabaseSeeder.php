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
//        DB::table('users')->insert(
//            [
//                'email' => 'admin@gmail.com',
//                'password' => Hash::make(123),
//                'name' => 'Admin Supper',
//                'role' => 1,
//                'phone' => '0377708868',
//                'email_verified_at' => Carbon::now()
//            ]
//        );
//
//        DB::table('categories')->insert(
//            [
//                [
//                    'c_name' => 'Đồng Hồ Chính Hãng',
//                    'c_parent_id' => 0,
//                    'c_slug' => 'dong-ho-chinh-hang',
//                ],
//                [
//                    'c_name' => 'Kính Mắt',
//                    'c_parent_id' => 0,
//                    'c_slug' => 'kinh-mat',
//                ],
//                [
//                    'c_name' => 'Phụ Kiện Đồng Hồ',
//                    'c_parent_id' => 0,
//                    'c_slug' => 'phu-kien-dong-ho',
//                ],
//            ]
//        );
//
//        DB::table('menus')->insert(
//            [
//                'mn_name' => 'Tin tức - Sự kiện',
//                'mn_slug' => 'tin-tuc-su-kien',
//            ],
//        );
//        DB::table('admins')->insert([
//            [
//                'name' => 'admin',
//                'email' => 'admin@gmail.com',
//                'password' => bcrypt('123'),
//                'created_at' => now(),
//                'updated_at' => now(),
//                'email_verified_at' => now(),
//            ],
//            [
//                'name' => 'ctv',
//                'email' => 'ctv@gmail.com',
//                'password' => bcrypt('123'),
//                'created_at' => now(),
//                'updated_at' => now(),
//                'email_verified_at' => now(),
//            ],
//        ]);
//
//        DB::table('permissions')->insert([
//            ['name' => 'list_post'],
//            ['name' => 'create_post'],
//            ['name' => 'show_post'],
//            ['name' => 'update_post'],
//            ['name' => 'delete_post'],
//        ]);
//
//        DB::table('roles')->insert([
//            ['name' => 'Admin'],
//            ['name' => 'CTV'],
//        ]);
//        DB::table('role_admin')->insert([
//            ['role_id' => 1, 'admin_id' => 1],
//            ['role_id' => 2, 'admin_id' => 2],
//        ]);
//        DB::table('permission_role')->insert([
//            ['permission_id' => 1, 'role_id' => 1],
//            ['permission_id' => 2, 'role_id' => 1],
//            ['permission_id' => 3, 'role_id' => 1],
//            ['permission_id' => 4, 'role_id' => 1],
//            ['permission_id' => 5, 'role_id' => 1],
//            ['permission_id' => 1, 'role_id' => 2],
//            ['permission_id' => 2, 'role_id' => 2],
//            ['permission_id' => 3, 'role_id' => 2],
//        ]);
    }
}
