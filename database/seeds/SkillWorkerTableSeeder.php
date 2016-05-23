<?php

use Illuminate\Database\Seeder;

class SkillWorkerTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $workers = \App\Worker::all();
        $skills  = \App\Skill::all();
        foreach ($workers as $worker) {
            $randSkills = $skills->shuffle()->take(rand(0, 5))->all();
            $worker->skills()->saveMany($randSkills);
        }
    }

}
