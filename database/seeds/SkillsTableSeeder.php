<?php

use Illuminate\Database\Seeder;

class SkillsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
     public function run()
     {
         for($i=1; $i<20; $i++) {
             $skill = new \App\Skill();
             $faker = \Faker\Factory::create();
             $skill->name = $faker->word;
             $skill->status = 'enable';
 		$skill->save();
         }
     }

}
