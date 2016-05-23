<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
     public function run()
     {
         Model::unguard();

         $this->call(UsersTableSeeder::class);
         $this->call(WorkersTableSeeder::class);
         $this->call(PhonesTableSeeder::class);
         $this->call(SkillsTableSeeder::class);
         $this->call(SkillWorkerTableSeeder::class);
         $this->call(EntrustTablesSeeder::class);
         $this->call('ThanhVienTablesSeeder');

         //Model::reguard();
     }



}

class ThanhVienTablesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('thanh_viens')->insert([
            ['user' => 'teo','pass'=>Hash::make(12345),'level'=>1],
            ['user' => 'tun','pass'=>Hash::make(12345),'level'=>2],
            ['user' => 'tuan','pass'=>bcrypt(12345),'level'=>2],
        ]);
    }
}
