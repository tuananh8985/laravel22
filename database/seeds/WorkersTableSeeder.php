<?php

use Illuminate\Database\Seeder;

class WorkersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
     public function run()
         {
             for ($i = 1; $i <= 50; $i++) {
                 $faker               = \Faker\Factory::create('vi_VN');
                 $worker              = new \App\Worker();
                 $worker->name        = $faker->name;
                 $worker->birth_date  = $faker->date();
                 $worker->gender      = $faker->randomElement(['male', 'female']);
                 $worker->description = $faker->text;
                 $worker->save();
             }
         }

}
