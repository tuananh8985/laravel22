<?php

use Illuminate\Database\Seeder;

class PhonesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
     public function run()
    {
        $workers = \App\Worker::all();
        foreach ($workers as $worker) {
            $p = rand(0, 4);
            for ($i = 1; $i <= $p; ++$i) {
                $phone         = new \App\Phone();
                $faker         = \Faker\Factory::create();
                $phone->number = $faker->phoneNumber;
                $phone->main   = $faker->randomElement([0, 1]);
                $worker->phones()->save($phone);
            }
        }
    }

}
